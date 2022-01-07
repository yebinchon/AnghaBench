
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;


 int TECH_LED_BLINK ;
 int disable_led_control ;
 int technisat_usb2_get_ir (struct dvb_usb_device*) ;
 int technisat_usb2_set_led (struct dvb_usb_device*,int,int ) ;

__attribute__((used)) static int technisat_usb2_rc_query(struct dvb_usb_device *d)
{
 int ret = technisat_usb2_get_ir(d);

 if (ret < 0)
  return ret;

 if (ret == 0)
  return 0;

 if (!disable_led_control)
  technisat_usb2_set_led(d, 1, TECH_LED_BLINK);

 return 0;
}
