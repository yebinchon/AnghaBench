
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tua6100_priv {int i2c_address; struct i2c_adapter* i2c; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {struct tua6100_priv* tuner_priv; TYPE_1__ ops; } ;


 int GFP_KERNEL ;
 int I2C_M_RD ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 struct tua6100_priv* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int tua6100_tuner_ops ;

struct dvb_frontend *tua6100_attach(struct dvb_frontend *fe, int addr, struct i2c_adapter *i2c)
{
 struct tua6100_priv *priv = ((void*)0);
 u8 b1 [] = { 0x80 };
 u8 b2 [] = { 0x00 };
 struct i2c_msg msg [] = { { .addr = addr, .flags = 0, .buf = b1, .len = 1 },
      { .addr = addr, .flags = I2C_M_RD, .buf = b2, .len = 1 } };
 int ret;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 ret = i2c_transfer (i2c, msg, 2);
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 if (ret != 2)
  return ((void*)0);

 priv = kzalloc(sizeof(struct tua6100_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return ((void*)0);

 priv->i2c_address = addr;
 priv->i2c = i2c;

 memcpy(&fe->ops.tuner_ops, &tua6100_tuner_ops, sizeof(struct dvb_tuner_ops));
 fe->tuner_priv = priv;
 return fe;
}
