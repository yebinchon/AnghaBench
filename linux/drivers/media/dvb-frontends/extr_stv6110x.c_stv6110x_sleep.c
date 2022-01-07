
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {scalar_t__ tuner_priv; } ;


 int TUNER_SLEEP ;
 int stv6110x_set_mode (struct dvb_frontend*,int ) ;

__attribute__((used)) static int stv6110x_sleep(struct dvb_frontend *fe)
{
 if (fe->tuner_priv)
  return stv6110x_set_mode(fe, TUNER_SLEEP);

 return 0;
}
