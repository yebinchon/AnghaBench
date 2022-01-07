
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct technisat_usb2_state {int power_state; } ;
struct dvb_usb_device {struct technisat_usb2_state* priv; } ;


 int TECH_LED_OFF ;
 int TECH_LED_ON ;
 scalar_t__ disable_led_control ;
 int technisat_usb2_set_led (struct dvb_usb_device*,int,int ) ;

__attribute__((used)) static int technisat_usb2_power_ctrl(struct dvb_usb_device *d, int level)
{
 struct technisat_usb2_state *state = d->priv;

 state->power_state = level;

 if (disable_led_control)
  return 0;


 technisat_usb2_set_led(d, 0, TECH_LED_OFF);

 technisat_usb2_set_led(d, 1, TECH_LED_ON);
 return 0;
}
