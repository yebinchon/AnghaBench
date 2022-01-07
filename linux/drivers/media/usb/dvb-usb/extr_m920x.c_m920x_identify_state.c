
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct dvb_usb_device_properties {int dummy; } ;
struct dvb_usb_device_description {int dummy; } ;


 struct usb_host_interface* usb_altnum_to_altsetting (int ,int) ;
 int usb_ifnum_to_if (struct usb_device*,int ) ;

__attribute__((used)) static int m920x_identify_state(struct usb_device *udev,
    struct dvb_usb_device_properties *props,
    struct dvb_usb_device_description **desc,
    int *cold)
{
 struct usb_host_interface *alt;

 alt = usb_altnum_to_altsetting(usb_ifnum_to_if(udev, 0), 1);
 *cold = (alt == ((void*)0)) ? 1 : 0;

 return 0;
}
