
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_7__ {int addr; int adap; } ;
struct TYPE_11__ {int switch_addr; int std_map; int config; } ;
struct tda8290_priv {int tda827x_addr; TYPE_1__ i2c_props; TYPE_5__ cfg; int ver; int tda18271_std_map; } ;
struct i2c_msg {int* buf; int len; int addr; int flags; } ;
struct TYPE_9__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct TYPE_8__ {int (* sleep ) (struct dvb_frontend*) ;int (* init ) (struct dvb_frontend*) ;} ;
struct TYPE_10__ {TYPE_3__ analog_ops; TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_4__ ops; struct tda8290_priv* analog_demod_priv; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int TDA18271 ;
 int TDA8275 ;
 int TDA8275A ;
 int dvb_attach (int ,struct dvb_frontend*,int,int ,TYPE_5__*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int stub3 (struct dvb_frontend*,int) ;
 int stub4 (struct dvb_frontend*,int) ;
 int stub5 (struct dvb_frontend*) ;
 int stub6 (struct dvb_frontend*) ;
 int stub7 (struct dvb_frontend*,int) ;
 int tda18271_attach ;
 int tda827x_attach ;
 TYPE_5__ tda829x_tda18271_config ;
 int tuner_info (char*,int) ;
 int tuner_warn (char*) ;

__attribute__((used)) static int tda829x_find_tuner(struct dvb_frontend *fe)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;
 int i, ret, tuners_found;
 u32 tuner_addrs;
 u8 data;
 struct i2c_msg msg = { .flags = I2C_M_RD, .buf = &data, .len = 1 };

 if (fe->ops.analog_ops.i2c_gate_ctrl)
  fe->ops.analog_ops.i2c_gate_ctrl(fe, 1);


 tuners_found = 0;
 tuner_addrs = 0;
 for (i = 0x60; i <= 0x63; i++) {
  msg.addr = i;
  ret = i2c_transfer(priv->i2c_props.adap, &msg, 1);
  if (ret == 1) {
   tuners_found++;
   tuner_addrs = (tuner_addrs << 8) + i;
  }
 }





 if (fe->ops.analog_ops.i2c_gate_ctrl)
  fe->ops.analog_ops.i2c_gate_ctrl(fe, 0);

 if (tuners_found > 1)
  for (i = 0; i < tuners_found; i++) {
   msg.addr = tuner_addrs & 0xff;
   ret = i2c_transfer(priv->i2c_props.adap, &msg, 1);
   if (ret == 1)
    tuner_addrs = tuner_addrs >> 8;
   else
    break;
  }

 if (tuner_addrs == 0) {
  tuner_addrs = 0x60;
  tuner_info("could not clearly identify tuner address, defaulting to %x\n",
      tuner_addrs);
 } else {
  tuner_addrs = tuner_addrs & 0xff;
  tuner_info("setting tuner address to %x\n", tuner_addrs);
 }
 priv->tda827x_addr = tuner_addrs;
 msg.addr = tuner_addrs;

 if (fe->ops.analog_ops.i2c_gate_ctrl)
  fe->ops.analog_ops.i2c_gate_ctrl(fe, 1);
 ret = i2c_transfer(priv->i2c_props.adap, &msg, 1);

 if (ret != 1) {
  tuner_warn("tuner access failed!\n");
  if (fe->ops.analog_ops.i2c_gate_ctrl)
   fe->ops.analog_ops.i2c_gate_ctrl(fe, 0);
  return -EREMOTEIO;
 }

 if ((data == 0x83) || (data == 0x84)) {
  priv->ver |= TDA18271;
  tda829x_tda18271_config.config = priv->cfg.config;
  tda829x_tda18271_config.std_map = priv->tda18271_std_map;
  dvb_attach(tda18271_attach, fe, priv->tda827x_addr,
      priv->i2c_props.adap, &tda829x_tda18271_config);
 } else {
  if ((data & 0x3c) == 0)
   priv->ver |= TDA8275;
  else
   priv->ver |= TDA8275A;

  dvb_attach(tda827x_attach, fe, priv->tda827x_addr,
      priv->i2c_props.adap, &priv->cfg);
  priv->cfg.switch_addr = priv->i2c_props.addr;
 }
 if (fe->ops.tuner_ops.init)
  fe->ops.tuner_ops.init(fe);

 if (fe->ops.tuner_ops.sleep)
  fe->ops.tuner_ops.sleep(fe);

 if (fe->ops.analog_ops.i2c_gate_ctrl)
  fe->ops.analog_ops.i2c_gate_ctrl(fe, 0);

 return 0;
}
