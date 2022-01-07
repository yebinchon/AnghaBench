
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * adap; } ;
struct tuner_simple_priv {int radio_mode; int frequency; scalar_t__ bandwidth; TYPE_1__ i2c_props; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;
struct analog_parameters {int mode; int frequency; } ;


 int EINVAL ;



 int simple_set_radio_freq (struct dvb_frontend*,struct analog_parameters*) ;
 int simple_set_tv_freq (struct dvb_frontend*,struct analog_parameters*) ;

__attribute__((used)) static int simple_set_params(struct dvb_frontend *fe,
        struct analog_parameters *params)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;
 int ret = -EINVAL;

 if (priv->i2c_props.adap == ((void*)0))
  return -EINVAL;

 switch (params->mode) {
 case 128:
  priv->radio_mode = 1;
  ret = simple_set_radio_freq(fe, params);
  priv->frequency = params->frequency * 125 / 2;
  break;
 case 130:
 case 129:
  priv->radio_mode = 0;
  ret = simple_set_tv_freq(fe, params);
  priv->frequency = params->frequency * 62500;
  break;
 }
 priv->bandwidth = 0;

 return ret;
}
