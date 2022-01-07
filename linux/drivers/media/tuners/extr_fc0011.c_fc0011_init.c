
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fc0011_priv {TYPE_1__* i2c; int addr; } ;
struct dvb_frontend {int (* callback ) (TYPE_1__*,int ,int ,int ) ;struct fc0011_priv* tuner_priv; } ;
struct TYPE_3__ {int dev; } ;


 int DVB_FRONTEND_COMPONENT_TUNER ;
 int EINVAL ;
 int FC0011_FE_CALLBACK_POWER ;
 int FC0011_FE_CALLBACK_RESET ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int *,char*) ;
 int stub1 (TYPE_1__*,int ,int ,int ) ;
 int stub2 (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static int fc0011_init(struct dvb_frontend *fe)
{
 struct fc0011_priv *priv = fe->tuner_priv;
 int err;

 if (WARN_ON(!fe->callback))
  return -EINVAL;

 err = fe->callback(priv->i2c, DVB_FRONTEND_COMPONENT_TUNER,
      FC0011_FE_CALLBACK_POWER, priv->addr);
 if (err) {
  dev_err(&priv->i2c->dev, "Power-on callback failed\n");
  return err;
 }
 err = fe->callback(priv->i2c, DVB_FRONTEND_COMPONENT_TUNER,
      FC0011_FE_CALLBACK_RESET, priv->addr);
 if (err) {
  dev_err(&priv->i2c->dev, "Reset callback failed\n");
  return err;
 }

 return 0;
}
