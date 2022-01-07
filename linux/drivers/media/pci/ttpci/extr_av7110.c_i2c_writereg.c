
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int len; int* buf; scalar_t__ flags; } ;
struct av7110 {int i2c_adap; } ;


 int i2c_transfer (int *,struct i2c_msg*,int) ;

int i2c_writereg(struct av7110 *av7110, u8 id, u8 reg, u8 val)
{
 u8 msg[2] = { reg, val };
 struct i2c_msg msgs;

 msgs.flags = 0;
 msgs.addr = id / 2;
 msgs.len = 2;
 msgs.buf = msg;
 return i2c_transfer(&av7110->i2c_adap, &msgs, 1);
}
