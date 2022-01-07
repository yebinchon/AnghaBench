
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct imon {int ir_urb; } ;


 int usb_free_urb (int ) ;
 struct imon* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void imon_disconnect(struct usb_interface *intf)
{
 struct imon *imon = usb_get_intfdata(intf);

 usb_kill_urb(imon->ir_urb);
 usb_free_urb(imon->ir_urb);
}
