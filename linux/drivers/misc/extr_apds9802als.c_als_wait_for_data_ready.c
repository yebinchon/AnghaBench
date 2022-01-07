
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int ETIMEDOUT ;
 int dev_warn (struct device*,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int msleep (int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int als_wait_for_data_ready(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 int ret;
 int retry = 10;

 do {
  msleep(30);
  ret = i2c_smbus_read_byte_data(client, 0x86);
 } while (!(ret & 0x80) && retry--);

 if (retry < 0) {
  dev_warn(dev, "timeout waiting for data ready\n");
  return -ETIMEDOUT;
 }

 return 0;
}
