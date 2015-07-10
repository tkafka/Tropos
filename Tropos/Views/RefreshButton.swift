import UIKit

class RefreshButton: UIButton {
    func startAnimating() {
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.duration = 0.5
        animation.repeatCount = Float.infinity
        animation.fromValue = NSNumber(integer: 0)
        animation.byValue = NSNumber(double: M_PI_2)
        animation.toValue = NSNumber(double: M_PI)

        layer.addAnimation(animation, forKey: "rotation")
    }

    func stopAnimating() {
        layer.removeAllAnimations()
    }
}
