
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adap; int addr; } ;
struct tda18271_priv {unsigned char* tda18271_regs; int small_i2c; TYPE_1__ i2c_props; } ;
struct i2c_msg {unsigned char* buf; int len; int flags; int addr; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;
typedef int buf ;


 int BUG_ON (int) ;
 int I2C_LOCK_SEGMENT ;




 int TDA18271_NUM_REGS ;
 int __i2c_transfer (int ,struct i2c_msg*,int) ;
 int i2c_lock_bus (int ,int ) ;
 int i2c_unlock_bus (int ,int ) ;
 int tda18271_i2c_gate_ctrl (struct dvb_frontend*,int) ;
 int tda_err (char*,int,int,int) ;

__attribute__((used)) static int __tda18271_write_regs(struct dvb_frontend *fe, int idx, int len,
   bool lock_i2c)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 unsigned char buf[TDA18271_NUM_REGS + 1];
 struct i2c_msg msg = { .addr = priv->i2c_props.addr, .flags = 0,
          .buf = buf };
 int i, ret = 1, max;

 BUG_ON((len == 0) || (idx + len > sizeof(buf)));

 switch (priv->small_i2c) {
 case 131:
  max = 3;
  break;
 case 130:
  max = 8;
  break;
 case 129:
  max = 16;
  break;
 case 128:
 default:
  max = 39;
 }
 if (lock_i2c) {
  tda18271_i2c_gate_ctrl(fe, 1);
  i2c_lock_bus(priv->i2c_props.adap, I2C_LOCK_SEGMENT);
 }
 while (len) {
  if (max > len)
   max = len;

  buf[0] = idx;
  for (i = 1; i <= max; i++)
   buf[i] = regs[idx - 1 + i];

  msg.len = max + 1;


  ret = __i2c_transfer(priv->i2c_props.adap, &msg, 1);
  if (ret != 1)
   break;

  idx += max;
  len -= max;
 }
 if (lock_i2c) {
  i2c_unlock_bus(priv->i2c_props.adap, I2C_LOCK_SEGMENT);
  tda18271_i2c_gate_ctrl(fe, 0);
 }

 if (ret != 1)
  tda_err("ERROR: idx = 0x%x, len = %d, i2c_transfer returned: %d\n",
   idx, max, ret);

 return (ret == 1 ? 0 : ret);
}
