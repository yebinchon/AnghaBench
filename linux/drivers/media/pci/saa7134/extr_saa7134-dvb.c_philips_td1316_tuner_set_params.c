
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int philips_tda6651_pll_set (struct dvb_frontend*) ;

__attribute__((used)) static int philips_td1316_tuner_set_params(struct dvb_frontend *fe)
{
 return philips_tda6651_pll_set(fe);
}
