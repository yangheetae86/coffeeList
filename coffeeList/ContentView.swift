//
//  ContentView.swift
//  coffeeList
//
//  Created by JU HAN LEE on 2020/04/28.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var menu: Menu =
        .init(hot: [.init(imageName: "icons8-cafe-52", name: "모카", price: "4900", summary: ""),.init(imageName: "icons8-cafe-80", name: "아메리카노", price: "3900", summary: ""),.init(imageName: "icons8-cafe-96-2", name: "카푸치노", price: "3900", summary: ""),.init(imageName: "icons8-cafe-96-3", name: "에스프레소", price: "5000", summary: ""),.init(imageName: "icons8-cafe-96", name: "라떼", price: "4600", summary: ""),.init(imageName: "icons8-cafe-100-2", name: "오늘의커피", price: "4500", summary: ""),.init(imageName: "icons8-cafe-100", name: "초코카페", price: "4000", summary: ""
            )], ice: [.init(imageName: "icons8-coffee-64-2", name: "아이스초코", price: "3000", summary: ""),.init(imageName: "icons8-coffee-64", name: "아이스커피", price: "3000", summary: ""),.init(imageName: "icons8-coffee-80-2", name: "아이스라떼", price: "3000", summary: ""),.init(imageName: "icons8-coffee-80-3", name: "밀크", price: "3000", summary: ""),.init(imageName: "icons8-coffee-80", name: "사이다", price: "3000", summary: ""),.init(imageName: "icons8-coffee-to-go-96", name: "콜라", price: "3000", summary: "")])
    
    var body: some View {
        
        ZStack {
            Color(.brown).edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Text("MENU")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(.leading)
                Text("Hot")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.title)
                    .padding(.leading)
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(0..<menu.hot.count) { i in
                            VStack {
                                Image(self.menu.hot[i].imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 210, height: 140)
                                    .cornerRadius(10)
                                    .padding(.leading)
                                Text(self.menu.hot[i].name)
                                    .foregroundColor(.white)
                                    .fontWeight(.thin)
                                    .padding(.init(top: 5, leading: 15, bottom: 5, trailing: 0))
                                Text("원\(self.menu.hot[i].price)")
                                    .foregroundColor(.white)
                                    .padding(.leading)
                            }
                        }
                    }
                }
                Text("Ice")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.title)
                    .padding(.leading)
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(0..<menu.ice.count) { i in
                            VStack {
                                Image(self.menu.ice[i].imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 210, height: 140)
                                    .cornerRadius(10)
                                    .padding(.leading)
                                Text(self.menu.ice[i].name)
                                    .foregroundColor(.white)
                                    .fontWeight(.thin)
                                    .padding(.init(top: 5, leading: 15, bottom: 5, trailing: 0))
                                Text("원\(self.menu.ice[i].price)")
                                    .foregroundColor(.white)
                                    .padding(.leading)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Menu: Identifiable { //yh
    var id = UUID() //yh
    var hot: [Detail]
    var ice: [Detail]
}

struct Detail: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    var price: String
    var summary: String
}
