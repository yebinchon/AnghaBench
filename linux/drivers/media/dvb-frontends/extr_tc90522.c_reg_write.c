
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tc90522_state {TYPE_1__* i2c_client; } ;
struct reg_val {int dummy; } ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct TYPE_2__ {int adapter; int addr; } ;


 int EIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int
reg_write(struct tc90522_state *state, const struct reg_val *regs, int num)
{
 int i, ret;
 struct i2c_msg msg;

 ret = 0;
 msg.addr = state->i2c_client->addr;
 msg.flags = 0;
 msg.len = 2;
 for (i = 0; i < num; i++) {
  msg.buf = (u8 *)&regs[i];
  ret = i2c_transfer(state->i2c_client->adapter, &msg, 1);
  if (ret == 0)
   ret = -EIO;
  if (ret < 0)
   return ret;
 }
 return 0;
}
