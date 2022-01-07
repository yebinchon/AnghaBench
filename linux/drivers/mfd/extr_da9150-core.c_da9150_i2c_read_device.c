
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int EIO ;
 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int da9150_i2c_read_device(struct i2c_client *client, u8 addr, int count,
      u8 *buf)
{
 struct i2c_msg xfer;
 int ret;







 xfer.addr = client->addr;
 xfer.flags = 0;
 xfer.len = 1;
 xfer.buf = &addr;

 ret = i2c_transfer(client->adapter, &xfer, 1);
 if (ret != 1) {
  if (ret < 0)
   return ret;
  else
   return -EIO;
 }


 xfer.addr = client->addr;
 xfer.flags = I2C_M_RD;
 xfer.len = count;
 xfer.buf = buf;

 ret = i2c_transfer(client->adapter, &xfer, 1);
 if (ret == 1)
  return 0;
 else if (ret < 0)
  return ret;
 else
  return -EIO;
}
