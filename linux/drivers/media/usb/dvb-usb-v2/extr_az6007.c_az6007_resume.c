
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct dvb_usb_device {struct dvb_usb_adapter* adapter; } ;
struct dvb_usb_adapter {int dummy; } ;


 int az6007_ci_init (struct dvb_usb_adapter*) ;
 int dvb_usbv2_resume (struct usb_interface*) ;
 struct dvb_usb_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int az6007_resume(struct usb_interface *intf)
{
 struct dvb_usb_device *d = usb_get_intfdata(intf);
 struct dvb_usb_adapter *adap = &d->adapter[0];

 az6007_ci_init(adap);
 return dvb_usbv2_resume(intf);
}
