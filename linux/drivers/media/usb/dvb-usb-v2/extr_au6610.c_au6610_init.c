
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int udev; } ;


 int usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int au6610_init(struct dvb_usb_device *d)
{


 return usb_set_interface(d->udev, 0, 5);
}
