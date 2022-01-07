
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbox_remote {int irq_urb; } ;
struct rc_dev {struct xbox_remote* priv; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void xbox_remote_rc_close(struct rc_dev *rdev)
{
 struct xbox_remote *xbox_remote = rdev->priv;

 usb_kill_urb(xbox_remote->irq_urb);
}
