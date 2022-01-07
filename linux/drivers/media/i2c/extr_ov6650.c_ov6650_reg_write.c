
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int dev_err (int *,char*,unsigned char) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int udelay (int) ;

__attribute__((used)) static int ov6650_reg_write(struct i2c_client *client, u8 reg, u8 val)
{
 int ret;
 unsigned char data[2] = { reg, val };
 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = 0,
  .len = 2,
  .buf = data,
 };

 ret = i2c_transfer(client->adapter, &msg, 1);
 udelay(100);

 if (ret < 0) {
  dev_err(&client->dev, "Failed writing register 0x%02x!\n", reg);
  return ret;
 }
 return 0;
}
