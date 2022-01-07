
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct dvb_usb_device {int dummy; } ;


 int az6027_ci_uninit (struct dvb_usb_device*) ;
 int dvb_usb_device_exit (struct usb_interface*) ;
 struct dvb_usb_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void az6027_usb_disconnect(struct usb_interface *intf)
{
 struct dvb_usb_device *d = usb_get_intfdata(intf);
 az6027_ci_uninit(d);
 dvb_usb_device_exit(intf);
}
