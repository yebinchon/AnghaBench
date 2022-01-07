
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dvb_frontend {int dummy; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {scalar_t__ (* set_gpio ) (struct dvb_frontend*,int,int ,int,int ) ;} ;


 int EREMOTEIO ;



 scalar_t__ stub1 (struct dvb_frontend*,int,int ,int,int ) ;
 TYPE_1__ technisat_usb2_stv090x_config ;

__attribute__((used)) static int technisat_usb2_set_voltage(struct dvb_frontend *fe,
          enum fe_sec_voltage voltage)
{
 int i;
 u8 gpio[3] = { 0 };

 gpio[2] = 1;

 switch (voltage) {
 case 130:
  gpio[0] = 1;
  break;
 case 129:
  gpio[0] = 1;
  gpio[1] = 1;
  break;
 default:
 case 128:
  break;
 }

 for (i = 0; i < 3; i++)
  if (technisat_usb2_stv090x_config.set_gpio(fe, i+2, 0,
          gpio[i], 0) != 0)
   return -EREMOTEIO;
 return 0;
}
