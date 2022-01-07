
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;


 int ath6kl_usb_device_detached (struct usb_interface*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static void ath6kl_usb_remove(struct usb_interface *interface)
{
 usb_put_dev(interface_to_usbdev(interface));
 ath6kl_usb_device_detached(interface);
}
