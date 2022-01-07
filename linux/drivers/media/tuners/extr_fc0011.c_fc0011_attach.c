
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {int dev; } ;
struct fc0011_priv {struct i2c_adapter* i2c; int addr; } ;
struct fc0011_config {int i2c_address; } ;
struct TYPE_2__ {int tuner_ops; } ;
struct dvb_frontend {TYPE_1__ ops; struct fc0011_priv* tuner_priv; } ;


 int GFP_KERNEL ;
 int dev_info (int *,char*) ;
 int fc0011_tuner_ops ;
 struct fc0011_priv* kzalloc (int,int ) ;

struct dvb_frontend *fc0011_attach(struct dvb_frontend *fe,
       struct i2c_adapter *i2c,
       const struct fc0011_config *config)
{
 struct fc0011_priv *priv;

 priv = kzalloc(sizeof(struct fc0011_priv), GFP_KERNEL);
 if (!priv)
  return ((void*)0);

 priv->i2c = i2c;
 priv->addr = config->i2c_address;

 fe->tuner_priv = priv;
 fe->ops.tuner_ops = fc0011_tuner_ops;

 dev_info(&priv->i2c->dev, "Fitipower FC0011 tuner attached\n");

 return fe;
}
