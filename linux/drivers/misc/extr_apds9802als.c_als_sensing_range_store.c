
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct als_data {int mutex; } ;
typedef int ssize_t ;


 int ERANGE ;
 struct als_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t als_sensing_range_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct als_data *data = i2c_get_clientdata(client);
 int ret_val;
 unsigned long val;

 ret_val = kstrtoul(buf, 10, &val);
 if (ret_val)
  return ret_val;

 if (val < 4096)
  val = 1;
 else if (val < 65536)
  val = 2;
 else
  return -ERANGE;

 pm_runtime_get_sync(dev);



 mutex_lock(&data->mutex);

 ret_val = i2c_smbus_read_byte_data(client, 0x81);
 if (ret_val < 0)
  goto fail;


 ret_val = ret_val & 0xFA;

 if (val == 1)
  ret_val = (ret_val | 0x01);
 else
  ret_val = (ret_val | 0x00);

 ret_val = i2c_smbus_write_byte_data(client, 0x81, ret_val);

 if (ret_val >= 0) {

  mutex_unlock(&data->mutex);
  pm_runtime_put_sync(dev);
  return count;
 }
fail:
 mutex_unlock(&data->mutex);
 pm_runtime_put_sync(dev);
 return ret_val;
}
