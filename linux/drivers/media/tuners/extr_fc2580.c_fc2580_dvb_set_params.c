
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc2580_dev {int f_bandwidth; int f_frequency; } ;
struct dtv_frontend_properties {int bandwidth_hz; int frequency; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct fc2580_dev* tuner_priv; } ;


 int fc2580_set_params (struct fc2580_dev*) ;

__attribute__((used)) static int fc2580_dvb_set_params(struct dvb_frontend *fe)
{
 struct fc2580_dev *dev = fe->tuner_priv;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 dev->f_frequency = c->frequency;
 dev->f_bandwidth = c->bandwidth_hz;
 return fc2580_set_params(dev);
}
