
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;


 int friio_reset (struct dvb_usb_device*) ;

__attribute__((used)) static int friio_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 return onoff ? friio_reset(d) : 0;
}
