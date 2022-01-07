
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc0013_priv {int xtal_freq; scalar_t__ dual_master; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct fc0013_priv* tuner_priv; } ;
typedef int reg ;





 int err (char*,int) ;
 int fc0013_writereg (struct fc0013_priv*,int,unsigned char) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int fc0013_init(struct dvb_frontend *fe)
{
 struct fc0013_priv *priv = fe->tuner_priv;
 int i, ret = 0;
 unsigned char reg[] = {
  0x00,
  0x09,
  0x16,
  0x00,
  0x00,
  0x17,
  0x02,
  0x0a,
  0xff,

  0x6f,
  0xb8,
  0x82,
  0xfc,
  0x01,
  0x00,
  0x00,
  0x00,
  0x00,
  0x00,
  0x00,
  0x50,

  0x01,
 };

 switch (priv->xtal_freq) {
 case 130:
 case 129:
  reg[0x07] |= 0x20;
  break;
 case 128:
 default:
  break;
 }

 if (priv->dual_master)
  reg[0x0c] |= 0x02;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 for (i = 1; i < sizeof(reg); i++) {
  ret = fc0013_writereg(priv, i, reg[i]);
  if (ret)
   break;
 }

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 if (ret)
  err("fc0013_writereg failed: %d", ret);

 return ret;
}
