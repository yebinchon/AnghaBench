
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noon010_info {int dummy; } ;
struct i2c_client {int dev; } ;


 int DEVICE_ID_REG ;
 int ENODEV ;
 int NOON010PC30_ID ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int power_disable (struct noon010_info*) ;
 int power_enable (struct noon010_info*) ;

__attribute__((used)) static int noon010_detect(struct i2c_client *client, struct noon010_info *info)
{
 int ret;

 ret = power_enable(info);
 if (ret)
  return ret;

 ret = i2c_smbus_read_byte_data(client, DEVICE_ID_REG);
 if (ret < 0)
  dev_err(&client->dev, "I2C read failed: 0x%X\n", ret);

 power_disable(info);

 return ret == NOON010PC30_ID ? 0 : -ENODEV;
}
