
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt2060_priv {scalar_t__ sleep; TYPE_1__* cfg; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; struct mt2060_priv* tuner_priv; } ;
struct TYPE_3__ {int clock_out; } ;


 int REG_MISC_CTRL ;
 int REG_VGAG ;
 int mt2060_writereg (struct mt2060_priv*,int ,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int mt2060_sleep(struct dvb_frontend *fe)
{
 struct mt2060_priv *priv = fe->tuner_priv;
 int ret;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 ret = mt2060_writereg(priv, REG_VGAG,
         (priv->cfg->clock_out << 6) | 0x30);
 if (ret)
  goto err_i2c_gate_ctrl;

 if (priv->sleep)
  ret = mt2060_writereg(priv, REG_MISC_CTRL, 0xe8);

err_i2c_gate_ctrl:
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return ret;
}
