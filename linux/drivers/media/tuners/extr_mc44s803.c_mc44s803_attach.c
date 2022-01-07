
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct mc44s803_priv {struct dvb_frontend* fe; struct i2c_adapter* i2c; struct mc44s803_config* cfg; } ;
struct mc44s803_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;int tuner_ops; } ;
struct dvb_frontend {TYPE_1__ ops; struct mc44s803_priv* tuner_priv; } ;


 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int MC44S803_ID ;
 int MC44S803_REG_ID ;
 int MC44S803_REG_MS (scalar_t__,int ) ;
 int kfree (struct mc44s803_priv*) ;
 struct mc44s803_priv* kzalloc (int,int ) ;
 int mc44s803_readreg (struct mc44s803_priv*,int ,scalar_t__*) ;
 int mc44s803_tuner_ops ;
 int mc_printk (int ,char*,int) ;
 int memcpy (int *,int *,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int stub3 (struct dvb_frontend*,int) ;

struct dvb_frontend *mc44s803_attach(struct dvb_frontend *fe,
  struct i2c_adapter *i2c, struct mc44s803_config *cfg)
{
 struct mc44s803_priv *priv;
 u32 reg;
 u8 id;
 int ret;

 reg = 0;

 priv = kzalloc(sizeof(struct mc44s803_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return ((void*)0);

 priv->cfg = cfg;
 priv->i2c = i2c;
 priv->fe = fe;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 ret = mc44s803_readreg(priv, MC44S803_REG_ID, &reg);
 if (ret)
  goto error;

 id = MC44S803_REG_MS(reg, MC44S803_ID);

 if (id != 0x14) {
  mc_printk(KERN_ERR, "unsupported ID (%x should be 0x14)\n",
     id);
  goto error;
 }

 mc_printk(KERN_INFO, "successfully identified (ID = %x)\n", id);
 memcpy(&fe->ops.tuner_ops, &mc44s803_tuner_ops,
        sizeof(struct dvb_tuner_ops));

 fe->tuner_priv = priv;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return fe;

error:
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 kfree(priv);
 return ((void*)0);
}
