
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fc0012_priv {TYPE_3__* i2c; TYPE_1__* cfg; } ;
struct TYPE_5__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; struct fc0012_priv* tuner_priv; } ;
typedef int reg ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int xtal_freq; scalar_t__ loop_through; scalar_t__ dual_master; } ;





 int KBUILD_MODNAME ;
 int dev_err (int *,char*,int ,int) ;
 int fc0012_writereg (struct fc0012_priv*,int,unsigned char) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int fc0012_init(struct dvb_frontend *fe)
{
 struct fc0012_priv *priv = fe->tuner_priv;
 int i, ret = 0;
 unsigned char reg[] = {
  0x00,
  0x05,
  0x10,
  0x00,
  0x00,
  0x0f,
  0x00,
  0x00,
  0xff,

  0x6e,
  0xb8,
  0x82,

  0xfc,
  0x02,
  0x00,
  0x00,
  0x00,
  0x00,
  0x1f,
  0x08,

  0x00,
  0x04,
 };

 switch (priv->cfg->xtal_freq) {
 case 130:
 case 129:
  reg[0x07] |= 0x20;
  break;
 case 128:
 default:
  break;
 }

 if (priv->cfg->dual_master)
  reg[0x0c] |= 0x02;

 if (priv->cfg->loop_through)
  reg[0x09] |= 0x01;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 for (i = 1; i < sizeof(reg); i++) {
  ret = fc0012_writereg(priv, i, reg[i]);
  if (ret)
   break;
 }

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 if (ret)
  dev_err(&priv->i2c->dev, "%s: fc0012_writereg failed: %d\n",
    KBUILD_MODNAME, ret);

 return ret;
}
