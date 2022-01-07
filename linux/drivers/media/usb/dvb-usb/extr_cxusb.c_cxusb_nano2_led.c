
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;


 int cxusb_bluebird_gpio_rw (struct dvb_usb_device*,int,int) ;

__attribute__((used)) static void cxusb_nano2_led(struct dvb_usb_device *d, int onoff)
{
 cxusb_bluebird_gpio_rw(d, 0x40, onoff ? 0 : 0x40);
}
