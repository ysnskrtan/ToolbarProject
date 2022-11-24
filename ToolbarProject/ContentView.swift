//
//  ContentView.swift
//  ToolbarProject
//
//  Created by Yasin Şükrü Tan on 24.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting: Bool = false
    
    var body: some View {
        NavigationView {
            Text("Hello World")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            isPresenting = !isPresenting
                        }, label: {
                            Image(systemName: "gear")
                        })
                    }
                }
                .foregroundColor(.black)
                .sheet(isPresented: $isPresenting) {
                    NavigationView {
                        Text("Setting Page")
                            .toolbar {
                                ToolbarItem {
                                    Button("Save") {
                                        
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
