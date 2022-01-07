
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_adapter {int dummy; } ;
struct fc0013_priv {int dual_master; int xtal_freq; int addr; struct i2c_adapter* i2c; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; } ;
struct dvb_frontend {TYPE_1__ ops; struct fc0013_priv* tuner_priv; } ;
typedef enum fc001x_xtal_freq { ____Placeholder_fc001x_xtal_freq } fc001x_xtal_freq ;


 int GFP_KERNEL ;
 int fc0013_tuner_ops ;
 int info (char*) ;
 struct fc0013_priv* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend *fc0013_attach(struct dvb_frontend *fe,
 struct i2c_adapter *i2c, u8 i2c_address, int dual_master,
 enum fc001x_xtal_freq xtal_freq)
{
 struct fc0013_priv *priv = ((void*)0);

 priv = kzalloc(sizeof(struct fc0013_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return ((void*)0);

 priv->i2c = i2c;
 priv->dual_master = dual_master;
 priv->addr = i2c_address;
 priv->xtal_freq = xtal_freq;

 info("Fitipower FC0013 successfully attached.");

 fe->tuner_priv = priv;

 memcpy(&fe->ops.tuner_ops, &fc0013_tuner_ops,
  sizeof(struct dvb_tuner_ops));

 return fe;
}
