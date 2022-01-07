
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;


 int dev_info (int *,char*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void go7007_loader_disconnect(struct usb_interface *interface)
{
 dev_info(&interface->dev, "disconnect\n");
 usb_put_dev(interface_to_usbdev(interface));
 usb_set_intfdata(interface, ((void*)0));
}
