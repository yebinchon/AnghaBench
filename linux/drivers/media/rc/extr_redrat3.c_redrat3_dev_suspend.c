
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct redrat3_dev {int flash_urb; int wide_urb; int narrow_urb; int led; } ;
typedef int pm_message_t ;


 int led_classdev_suspend (int *) ;
 struct redrat3_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int redrat3_dev_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct redrat3_dev *rr3 = usb_get_intfdata(intf);

 led_classdev_suspend(&rr3->led);
 usb_kill_urb(rr3->narrow_urb);
 usb_kill_urb(rr3->wide_urb);
 usb_kill_urb(rr3->flash_urb);
 return 0;
}
