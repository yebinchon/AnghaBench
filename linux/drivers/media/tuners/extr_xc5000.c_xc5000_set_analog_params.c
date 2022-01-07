
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * adap; } ;
struct xc5000_priv {int mode; TYPE_1__ i2c_props; } ;
struct dvb_frontend {struct xc5000_priv* tuner_priv; } ;
struct analog_parameters {int mode; } ;


 int EINVAL ;


 int xc5000_config_radio (struct dvb_frontend*,struct analog_parameters*) ;
 int xc5000_config_tv (struct dvb_frontend*,struct analog_parameters*) ;
 int xc5000_set_params (struct dvb_frontend*) ;

__attribute__((used)) static int xc5000_set_analog_params(struct dvb_frontend *fe,
        struct analog_parameters *params)
{
 struct xc5000_priv *priv = fe->tuner_priv;
 int ret;

 if (priv->i2c_props.adap == ((void*)0))
  return -EINVAL;

 switch (params->mode) {
 case 128:
  ret = xc5000_config_radio(fe, params);
  if (ret)
   return ret;
  break;
 case 129:
  xc5000_config_tv(fe, params);
  break;
 default:
  break;
 }
 priv->mode = params->mode;

 return xc5000_set_params(fe);
}
