
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int len; int* buf; scalar_t__ flags; } ;
struct i2c_adapter {int dummy; } ;


 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int i2c_writereg(struct i2c_adapter *i2c, u8 id, u8 reg, u8 val)
{
 u8 msg[2] = { reg, val };
 struct i2c_msg msgs;

 msgs.flags = 0;
 msgs.addr = id / 2;
 msgs.len = 2;
 msgs.buf = msg;
 return i2c_transfer(i2c, &msgs, 1);
}
