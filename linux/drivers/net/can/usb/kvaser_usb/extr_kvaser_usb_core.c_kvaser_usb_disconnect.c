
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct kvaser_usb {int dummy; } ;


 int kvaser_usb_remove_interfaces (struct kvaser_usb*) ;
 struct kvaser_usb* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void kvaser_usb_disconnect(struct usb_interface *intf)
{
 struct kvaser_usb *dev = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));

 if (!dev)
  return;

 kvaser_usb_remove_interfaces(dev);
}
