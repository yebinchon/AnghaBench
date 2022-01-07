
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct i2c_msg {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ ET8EK8_REG_16BIT ;
 scalar_t__ ET8EK8_REG_8BIT ;
 int dev_err (int *,char*,int ,scalar_t__,int) ;
 int et8ek8_i2c_create_msg (struct i2c_client*,scalar_t__,scalar_t__,int ,struct i2c_msg*,unsigned char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int et8ek8_i2c_write_reg(struct i2c_client *client, u16 data_length,
    u16 reg, u32 val)
{
 int r;
 struct i2c_msg msg;
 unsigned char data[6];

 if (!client->adapter)
  return -ENODEV;
 if (data_length != ET8EK8_REG_8BIT && data_length != ET8EK8_REG_16BIT)
  return -EINVAL;

 et8ek8_i2c_create_msg(client, data_length, reg, val, &msg, data);

 r = i2c_transfer(client->adapter, &msg, 1);
 if (r < 0) {
  dev_err(&client->dev,
   "wrote 0x%x to offset 0x%x error %d\n", val, reg, r);
  return r;
 }

 return 0;
}
