
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dvb_frontend {int dummy; } ;


 int deb_info (char*,scalar_t__) ;
 int dib0090_set_dc_servo (struct dvb_frontend*,int) ;

__attribute__((used)) static int dib7090_agc_restart(struct dvb_frontend *fe, u8 restart)
{
 deb_info("AGC restart callback: %d", restart);
 if (restart == 0)
  dib0090_set_dc_servo(fe, 1);
 return 0;
}
