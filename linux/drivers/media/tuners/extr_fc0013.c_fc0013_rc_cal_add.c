
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fc0013_priv {int dummy; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct fc0013_priv* tuner_priv; } ;


 int fc0013_readreg (struct fc0013_priv*,int,int*) ;
 int fc0013_writereg (struct fc0013_priv*,int,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

int fc0013_rc_cal_add(struct dvb_frontend *fe, int rc_val)
{
 struct fc0013_priv *priv = fe->tuner_priv;
 int ret;
 u8 rc_cal;
 int val;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);


 ret = fc0013_writereg(priv, 0x10, 0x00);
 if (ret)
  goto error_out;


 ret = fc0013_readreg(priv, 0x10, &rc_cal);
 if (ret)
  goto error_out;

 rc_cal &= 0x0f;

 val = (int)rc_cal + rc_val;


 ret = fc0013_writereg(priv, 0x0d, 0x11);
 if (ret)
  goto error_out;


 if (val > 15)
  ret = fc0013_writereg(priv, 0x10, 0x0f);
 else if (val < 0)
  ret = fc0013_writereg(priv, 0x10, 0x00);
 else
  ret = fc0013_writereg(priv, 0x10, (u8)val);

error_out:
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return ret;
}
