
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6507x_dev {struct i2c_client* i2c_client; } ;
struct i2c_msg {int len; char* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int EIO ;
 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int tps6507x_i2c_read_device(struct tps6507x_dev *tps6507x, char reg,
      int bytes, void *dest)
{
 struct i2c_client *i2c = tps6507x->i2c_client;
 struct i2c_msg xfer[2];
 int ret;


 xfer[0].addr = i2c->addr;
 xfer[0].flags = 0;
 xfer[0].len = 1;
 xfer[0].buf = &reg;


 xfer[1].addr = i2c->addr;
 xfer[1].flags = I2C_M_RD;
 xfer[1].len = bytes;
 xfer[1].buf = dest;

 ret = i2c_transfer(i2c->adapter, xfer, 2);
 if (ret == 2)
  ret = 0;
 else if (ret >= 0)
  ret = -EIO;

 return ret;
}
