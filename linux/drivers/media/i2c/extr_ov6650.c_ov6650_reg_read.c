
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int flags; int * buf; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int I2C_M_RD ;
 int dev_err (int *,char*,int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int ov6650_reg_read(struct i2c_client *client, u8 reg, u8 *val)
{
 int ret;
 u8 data = reg;
 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = 0,
  .len = 1,
  .buf = &data,
 };

 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret < 0)
  goto err;

 msg.flags = I2C_M_RD;
 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret < 0)
  goto err;

 *val = data;
 return 0;

err:
 dev_err(&client->dev, "Failed reading register 0x%02x!\n", reg);
 return ret;
}
