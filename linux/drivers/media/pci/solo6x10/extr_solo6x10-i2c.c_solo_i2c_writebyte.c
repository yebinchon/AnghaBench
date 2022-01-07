
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct solo_dev {int * i2c_adap; } ;
struct i2c_msg {int len; int * buf; int addr; scalar_t__ flags; } ;


 int i2c_transfer (int *,struct i2c_msg*,int) ;

void solo_i2c_writebyte(struct solo_dev *solo_dev, int id, u8 addr,
   u8 off, u8 data)
{
 struct i2c_msg msgs;
 u8 buf[2];

 buf[0] = off;
 buf[1] = data;
 msgs.flags = 0;
 msgs.addr = addr;
 msgs.len = 2;
 msgs.buf = buf;

 i2c_transfer(&solo_dev->i2c_adap[id], &msgs, 1);
}
