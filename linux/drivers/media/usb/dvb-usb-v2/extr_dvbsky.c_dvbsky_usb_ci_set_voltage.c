
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvbsky_state {int (* fe_set_voltage ) (struct dvb_frontend*,int) ;} ;
struct dvb_usb_device {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int SEC_VOLTAGE_OFF ;
 struct dvbsky_state* d_to_priv (struct dvb_usb_device*) ;
 int dvbsky_gpio_ctrl (struct dvb_usb_device*,int,int) ;
 struct dvb_usb_device* fe_to_d (struct dvb_frontend*) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int dvbsky_usb_ci_set_voltage(struct dvb_frontend *fe,
 enum fe_sec_voltage voltage)
{
 struct dvb_usb_device *d = fe_to_d(fe);
 struct dvbsky_state *state = d_to_priv(d);
 u8 value;

 if (voltage == SEC_VOLTAGE_OFF)
  value = 0;
 else
  value = 1;
 dvbsky_gpio_ctrl(d, 0x00, value);

 return state->fe_set_voltage(fe, voltage);
}
