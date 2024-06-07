//
//  NewsButton.swift
//  NewsAppAdvanced
//
//  Created by Yaşar Duman on 17.10.2023.
//


import UIKit

class NewsButton: UIButton {
    
    enum FontSize {
        case big
        case medium
        case small
    }
    
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(bgColor: UIColor ,color: UIColor, title: String, fontSize: FontSize = .medium, systemImageName: String? = nil){
        self.init(frame: .zero)
        set(bgColor: bgColor ,color: color, title: title, fontSize: fontSize,  systemImageName: systemImageName)
    }
    
    // MARK: - Configuration
    private func configure() {
        configuration = .tinted()
        configuration?.cornerStyle = .medium
        translatesAutoresizingMaskIntoConstraints = false
        
    

    }
    
    func set(bgColor: UIColor ,color: UIColor, title: String, fontSize: FontSize, systemImageName: String?) {
        configuration?.baseBackgroundColor = bgColor
        configuration?.baseForegroundColor = color
        configuration?.title = title
        
        if let imageName = systemImageName {
               configuration?.image = UIImage(systemName: imageName)
               configuration?.imagePadding = 6
           }
    
        switch fontSize {
        case .big:
            self.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        case .medium:
            self.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        case .small:
            self.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        }
    
    }
    
}
