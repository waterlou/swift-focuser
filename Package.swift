// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Focuser",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Focuser",
            targets: ["Focuser"]),
    ],
    dependencies: [
        .package(name: "SwiftUIIntrospect", url: "https://github.com/siteline/SwiftUI-Introspect.git", from: "1.1.0")
    ],
    targets: [
        .target(
            name: "Focuser",
            dependencies: ["SwiftUIIntrospect"]),
        .testTarget(
            name: "FocuserTests",
            dependencies: ["Focuser"]),
    ]
)
