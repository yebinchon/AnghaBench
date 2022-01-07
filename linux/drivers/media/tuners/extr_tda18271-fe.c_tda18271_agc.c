
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* adap; } ;
struct tda18271_priv {int config; int mode; TYPE_1__ i2c_props; } ;
struct dvb_frontend {int (* callback ) (int ,int ,int ,int ) ;struct tda18271_priv* tuner_priv; } ;
struct TYPE_4__ {int algo_data; } ;


 int DBG_ADV ;
 int DVB_FRONTEND_COMPONENT_TUNER ;
 int EINVAL ;
 int TDA18271_CALLBACK_CMD_AGC_ENABLE ;




 int stub1 (int ,int ,int ,int ) ;
 int tda18271_debug ;
 int tda_dbg (char*) ;
 int tda_err (char*,int) ;

__attribute__((used)) static int tda18271_agc(struct dvb_frontend *fe)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 int ret = 0;

 switch (priv->config) {
 case 129:

  if (tda18271_debug & DBG_ADV)
   tda_dbg("no agc configuration provided\n");
  break;
 case 128:

  tda_dbg("invoking callback\n");
  if (fe->callback)
   ret = fe->callback(priv->i2c_props.adap->algo_data,
        DVB_FRONTEND_COMPONENT_TUNER,
        TDA18271_CALLBACK_CMD_AGC_ENABLE,
        priv->mode);
  break;
 case 130:
 case 131:
 default:

  tda_err("unsupported configuration: %d\n", priv->config);
  ret = -EINVAL;
  break;
 }
 return ret;
}
