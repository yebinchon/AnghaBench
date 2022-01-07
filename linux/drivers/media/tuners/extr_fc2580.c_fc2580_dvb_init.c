
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int tuner_priv; } ;


 int fc2580_init (int ) ;

__attribute__((used)) static int fc2580_dvb_init(struct dvb_frontend *fe)
{
 return fc2580_init(fe->tuner_priv);
}
