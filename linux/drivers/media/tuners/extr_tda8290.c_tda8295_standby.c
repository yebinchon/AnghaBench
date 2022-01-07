
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int tda8295_agc1_out (struct dvb_frontend*,int ) ;
 int tda8295_power (struct dvb_frontend*,int ) ;

__attribute__((used)) static void tda8295_standby(struct dvb_frontend *fe)
{
 tda8295_agc1_out(fe, 0);

 tda8295_power(fe, 0);
}
