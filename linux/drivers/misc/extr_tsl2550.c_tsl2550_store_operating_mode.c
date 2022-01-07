
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2550_data {scalar_t__ power_state; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 struct tsl2550_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int tsl2550_set_operating_mode (struct i2c_client*,unsigned long) ;

__attribute__((used)) static ssize_t tsl2550_store_operating_mode(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct tsl2550_data *data = i2c_get_clientdata(client);
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);
 int ret;

 if (val > 1)
  return -EINVAL;

 if (data->power_state == 0)
  return -EBUSY;

 mutex_lock(&data->update_lock);
 ret = tsl2550_set_operating_mode(client, val);
 mutex_unlock(&data->update_lock);

 if (ret < 0)
  return ret;

 return count;
}
