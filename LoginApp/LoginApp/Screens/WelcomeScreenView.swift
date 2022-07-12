//
//  WelcomeScreenView.swift
//  LoginApp
//
//  Created by Timothy Mapote on 7/12/22.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("login")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    PrimaryButton(title: "Get Started")
                    
                    NavigationLink(
                        destination: SignInScreenView().navigationBarHidden(true)) {
                            Text("Sign In")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("GreenColor"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.10), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        }
                        .navigationBarHidden(true)
                    
                    HStack {
                        Text("New User? ")
                        Text("Sign in")
                            .foregroundColor(Color("GreenColor"))
                    }
                }
                .padding()
            }
        }
    }
}


struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
