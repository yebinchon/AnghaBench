
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adap; int addr; } ;
struct tda18271_priv {unsigned char* tda18271_regs; TYPE_1__ i2c_props; } ;
struct i2c_msg {unsigned char* buf; int len; int flags; int addr; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int DBG_REG ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int tda18271_debug ;
 int tda18271_dump_regs (struct dvb_frontend*,int ) ;
 int tda18271_i2c_gate_ctrl (struct dvb_frontend*,int) ;
 int tda_err (char*,int) ;

int tda18271_read_regs(struct dvb_frontend *fe)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 unsigned char buf = 0x00;
 int ret;
 struct i2c_msg msg[] = {
  { .addr = priv->i2c_props.addr, .flags = 0,
    .buf = &buf, .len = 1 },
  { .addr = priv->i2c_props.addr, .flags = I2C_M_RD,
    .buf = regs, .len = 16 }
 };

 tda18271_i2c_gate_ctrl(fe, 1);


 ret = i2c_transfer(priv->i2c_props.adap, msg, 2);

 tda18271_i2c_gate_ctrl(fe, 0);

 if (ret != 2)
  tda_err("ERROR: i2c_transfer returned: %d\n", ret);

 if (tda18271_debug & DBG_REG)
  tda18271_dump_regs(fe, 0);

 return (ret == 2 ? 0 : ret);
}
