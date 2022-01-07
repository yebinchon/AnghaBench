
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e4000_dev {int f_bandwidth; int f_frequency; } ;
struct dtv_frontend_properties {int bandwidth_hz; int frequency; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct e4000_dev* tuner_priv; } ;


 int e4000_set_params (struct e4000_dev*) ;

__attribute__((used)) static int e4000_dvb_set_params(struct dvb_frontend *fe)
{
 struct e4000_dev *dev = fe->tuner_priv;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 dev->f_frequency = c->frequency;
 dev->f_bandwidth = c->bandwidth_hz;
 return e4000_set_params(dev);
}
