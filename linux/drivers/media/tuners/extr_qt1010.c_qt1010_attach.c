
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qt1010_priv {struct i2c_adapter* i2c; struct qt1010_config* cfg; } ;
struct qt1010_config {int dummy; } ;
struct i2c_adapter {int dev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {struct qt1010_priv* tuner_priv; TYPE_1__ ops; } ;


 int GFP_KERNEL ;
 int KBUILD_MODNAME ;
 int dev_info (int *,char*,int ) ;
 int kfree (struct qt1010_priv*) ;
 struct qt1010_priv* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ qt1010_readreg (struct qt1010_priv*,int,int*) ;
 int qt1010_tuner_ops ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

struct dvb_frontend * qt1010_attach(struct dvb_frontend *fe,
        struct i2c_adapter *i2c,
        struct qt1010_config *cfg)
{
 struct qt1010_priv *priv = ((void*)0);
 u8 id;

 priv = kzalloc(sizeof(struct qt1010_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return ((void*)0);

 priv->cfg = cfg;
 priv->i2c = i2c;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);



 if (qt1010_readreg(priv, 0x29, &id) != 0 || (id != 0x39)) {
  kfree(priv);
  return ((void*)0);
 }

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 dev_info(&priv->i2c->dev,
   "%s: Quantek QT1010 successfully identified\n",
   KBUILD_MODNAME);

 memcpy(&fe->ops.tuner_ops, &qt1010_tuner_ops,
        sizeof(struct dvb_tuner_ops));

 fe->tuner_priv = priv;
 return fe;
}
