
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int adap; } ;
struct tda8290_priv {int ver; TYPE_3__ i2c_props; int tda827x_addr; } ;
struct i2c_msg {unsigned char* buf; int len; int flags; int addr; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct TYPE_5__ {TYPE_1__ analog_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct tda8290_priv* analog_demod_priv; } ;


 int TDA8275A ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int tuner_i2c_xfer_send (TYPE_3__*,unsigned char*,int) ;

__attribute__((used)) static void tda8290_standby(struct dvb_frontend *fe)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;

 static unsigned char cb1[] = { 0x30, 0xD0 };
 static unsigned char tda8290_standby[] = { 0x00, 0x02 };
 static unsigned char tda8290_agc_tri[] = { 0x02, 0x20 };
 struct i2c_msg msg = {.addr = priv->tda827x_addr, .flags=0, .buf=cb1, .len = 2};

 if (fe->ops.analog_ops.i2c_gate_ctrl)
  fe->ops.analog_ops.i2c_gate_ctrl(fe, 1);
 if (priv->ver & TDA8275A)
  cb1[1] = 0x90;
 i2c_transfer(priv->i2c_props.adap, &msg, 1);
 if (fe->ops.analog_ops.i2c_gate_ctrl)
  fe->ops.analog_ops.i2c_gate_ctrl(fe, 0);
 tuner_i2c_xfer_send(&priv->i2c_props, tda8290_agc_tri, 2);
 tuner_i2c_xfer_send(&priv->i2c_props, tda8290_standby, 2);
}
