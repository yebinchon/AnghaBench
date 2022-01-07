
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;


 int FRIIO_LED_STOPPED ;
 int friio_ext_ctl (struct dvb_usb_device*,int ,int) ;

__attribute__((used)) static void friio_exit(struct dvb_usb_device *d)
{
 friio_ext_ctl(d, FRIIO_LED_STOPPED, 0);
}
