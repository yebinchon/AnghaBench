
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int msleep (int) ;
 int mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int sprintf (char*,char*,unsigned long) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t als_lux_input_data_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 int ret_val, val;
 unsigned long int lux;
 int temp;

 pm_runtime_get_sync(dev);
 msleep(100);

 mutex_lock(&mutex);
 temp = i2c_smbus_read_byte_data(client, 0x02);
 if (temp < 0) {
  pm_runtime_put_sync(dev);
  mutex_unlock(&mutex);
  return temp;
 }

 ret_val = i2c_smbus_read_byte_data(client, 0x01);
 mutex_unlock(&mutex);

 if (ret_val < 0) {
  pm_runtime_put_sync(dev);
  return ret_val;
 }

 ret_val |= temp << 8;
 val = i2c_smbus_read_byte_data(client, 0x00);
 pm_runtime_put_sync(dev);
 if (val < 0)
  return val;
 lux = ((((1 << (2 * (val & 3))))*1000) * ret_val) / 65536;
 return sprintf(buf, "%ld\n", lux);
}
