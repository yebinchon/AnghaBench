
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microtune_priv {int frequency; } ;
struct dvb_frontend {struct microtune_priv* tuner_priv; } ;
struct analog_parameters {int mode; int frequency; } ;


 int EINVAL ;



 int mt2050_set_radio_freq (struct dvb_frontend*,struct analog_parameters*) ;
 int mt2050_set_tv_freq (struct dvb_frontend*,struct analog_parameters*) ;

__attribute__((used)) static int mt2050_set_params(struct dvb_frontend *fe,
        struct analog_parameters *params)
{
 struct microtune_priv *priv = fe->tuner_priv;
 int ret = -EINVAL;

 switch (params->mode) {
 case 128:
  ret = mt2050_set_radio_freq(fe, params);
  priv->frequency = params->frequency * 125 / 2;
  break;
 case 130:
 case 129:
  ret = mt2050_set_tv_freq(fe, params);
  priv->frequency = params->frequency * 62500;
  break;
 }

 return ret;
}
