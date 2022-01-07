
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct mceusb_dev {int urb_in; int dev; } ;
typedef int pm_message_t ;


 int dev_info (int ,char*) ;
 struct mceusb_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int mceusb_dev_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct mceusb_dev *ir = usb_get_intfdata(intf);
 dev_info(ir->dev, "suspend");
 usb_kill_urb(ir->urb_in);
 return 0;
}
