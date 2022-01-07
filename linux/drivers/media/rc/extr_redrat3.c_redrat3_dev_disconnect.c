
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct redrat3_dev {int led; int rc; } ;


 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int led_classdev_unregister (int *) ;
 int rc_unregister_device (int ) ;
 int redrat3_delete (struct redrat3_dev*,struct usb_device*) ;
 struct redrat3_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void redrat3_dev_disconnect(struct usb_interface *intf)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct redrat3_dev *rr3 = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));
 rc_unregister_device(rr3->rc);
 led_classdev_unregister(&rr3->led);
 redrat3_delete(rr3, udev);
}
