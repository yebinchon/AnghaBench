
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;


 int cxusb_nano2_led (struct dvb_usb_device*,int ) ;
 int cxusb_power_ctrl (struct dvb_usb_device*,int) ;

__attribute__((used)) static int cxusb_nano2_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 int rc = 0;

 rc = cxusb_power_ctrl(d, onoff);
 if (!onoff)
  cxusb_nano2_led(d, 0);

 return rc;
}
