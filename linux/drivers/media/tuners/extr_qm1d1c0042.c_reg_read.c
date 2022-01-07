
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qm1d1c0042_state {TYPE_1__* i2c; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct TYPE_2__ {int adapter; int addr; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int reg_read(struct qm1d1c0042_state *state, u8 reg, u8 *val)
{
 struct i2c_msg msgs[2] = {
  {
   .addr = state->i2c->addr,
   .flags = 0,
   .buf = &reg,
   .len = 1,
  },
  {
   .addr = state->i2c->addr,
   .flags = I2C_M_RD,
   .buf = val,
   .len = 1,
  },
 };
 int ret;

 ret = i2c_transfer(state->i2c->adapter, msgs, ARRAY_SIZE(msgs));
 if (ret >= 0 && ret < ARRAY_SIZE(msgs))
  ret = -EIO;
 return (ret == ARRAY_SIZE(msgs)) ? 0 : ret;
}
