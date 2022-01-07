
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct igorplugusb {int urb; int timer; int rc; } ;


 int del_timer_sync (int *) ;
 int rc_unregister_device (int ) ;
 int usb_free_urb (int ) ;
 struct igorplugusb* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void igorplugusb_disconnect(struct usb_interface *intf)
{
 struct igorplugusb *ir = usb_get_intfdata(intf);

 rc_unregister_device(ir->rc);
 del_timer_sync(&ir->timer);
 usb_set_intfdata(intf, ((void*)0));
 usb_kill_urb(ir->urb);
 usb_free_urb(ir->urb);
}
