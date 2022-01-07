
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int tuner_priv; } ;


 int e4000_sleep (int ) ;

__attribute__((used)) static int e4000_dvb_sleep(struct dvb_frontend *fe)
{
 return e4000_sleep(fe->tuner_priv);
}
