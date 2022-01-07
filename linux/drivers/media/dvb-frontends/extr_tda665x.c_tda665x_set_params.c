
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtv_frontend_properties {int frequency; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;


 int tda665x_set_frequency (struct dvb_frontend*,int ) ;

__attribute__((used)) static int tda665x_set_params(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 tda665x_set_frequency(fe, c->frequency);

 return 0;
}
