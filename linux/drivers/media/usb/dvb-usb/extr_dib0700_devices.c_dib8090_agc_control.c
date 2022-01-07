
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dvb_frontend {int dummy; } ;


 int deb_info (char*,scalar_t__) ;
 int dib0090_dcc_freq (struct dvb_frontend*,scalar_t__) ;
 int dib0090_set_dc_servo (struct dvb_frontend*,int) ;

__attribute__((used)) static void dib8090_agc_control(struct dvb_frontend *fe, u8 restart)
{
 deb_info("AGC control callback: %i\n", restart);
 dib0090_dcc_freq(fe, restart);

 if (restart == 0)
  dib0090_set_dc_servo(fe, 1);
}
