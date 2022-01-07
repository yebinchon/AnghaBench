
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct streamzap_ir {int urb_in; } ;
typedef int pm_message_t ;


 struct streamzap_ir* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int streamzap_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct streamzap_ir *sz = usb_get_intfdata(intf);

 usb_kill_urb(sz->urb_in);

 return 0;
}
