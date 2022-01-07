
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {TYPE_1__* af9033_config; } ;
struct dvb_usb_device {int dummy; } ;
struct TYPE_2__ {int tuner; } ;




 int af9035_fc0011_tuner_callback (struct dvb_usb_device*,int,int) ;
 int af9035_tua9001_tuner_callback (struct dvb_usb_device*,int,int) ;
 struct state* d_to_priv (struct dvb_usb_device*) ;

__attribute__((used)) static int af9035_tuner_callback(struct dvb_usb_device *d, int cmd, int arg)
{
 struct state *state = d_to_priv(d);

 switch (state->af9033_config[0].tuner) {
 case 129:
  return af9035_fc0011_tuner_callback(d, cmd, arg);
 case 128:
  return af9035_tua9001_tuner_callback(d, cmd, arg);
 default:
  break;
 }

 return 0;
}
