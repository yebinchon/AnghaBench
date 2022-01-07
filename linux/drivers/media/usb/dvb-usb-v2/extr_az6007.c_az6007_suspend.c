
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct dvb_usb_device {int dummy; } ;
typedef int pm_message_t ;


 int az6007_ci_uninit (struct dvb_usb_device*) ;
 int dvb_usbv2_suspend (struct usb_interface*,int ) ;
 struct dvb_usb_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int az6007_suspend(struct usb_interface *intf, pm_message_t msg)
{
 struct dvb_usb_device *d = usb_get_intfdata(intf);

 az6007_ci_uninit(d);
 return dvb_usbv2_suspend(intf, msg);
}
