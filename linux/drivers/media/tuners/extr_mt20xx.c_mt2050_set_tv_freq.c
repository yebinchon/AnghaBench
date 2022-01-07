
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
struct analog_parameters {int std; scalar_t__ mode; int frequency; } ;


 int V4L2_STD_525_60 ;
 scalar_t__ V4L2_TUNER_DIGITAL_TV ;
 int mt2050_set_antenna (struct dvb_frontend*,int ) ;
 int mt2050_set_if_freq (struct dvb_frontend*,int,unsigned int) ;
 int tv_antenna ;

__attribute__((used)) static int mt2050_set_tv_freq(struct dvb_frontend *fe,
         struct analog_parameters *params)
{
 unsigned int if2;

 if (params->std & V4L2_STD_525_60) {

  if2 = 45750*1000;
 } else {

  if2 = 38900*1000;
 }
 if (V4L2_TUNER_DIGITAL_TV == params->mode) {

  if2 = 36150*1000;
 }
 mt2050_set_if_freq(fe, params->frequency*62500, if2);
 mt2050_set_antenna(fe, tv_antenna);

 return 0;
}
