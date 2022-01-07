
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;


 int smsusb_term_device (struct usb_interface*) ;

__attribute__((used)) static void smsusb_disconnect(struct usb_interface *intf)
{
 smsusb_term_device(intf);
}
