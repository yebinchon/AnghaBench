
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct dvb_usb_device {int dummy; } ;


 int az6007_ci_uninit (struct dvb_usb_device*) ;
 int dvb_usbv2_disconnect (struct usb_interface*) ;
 struct dvb_usb_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void az6007_usb_disconnect(struct usb_interface *intf)
{
 struct dvb_usb_device *d = usb_get_intfdata(intf);
 az6007_ci_uninit(d);
 dvb_usbv2_disconnect(intf);
}
