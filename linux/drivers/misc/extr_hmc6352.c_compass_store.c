
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 unsigned long array_index_nospec (unsigned long,unsigned long) ;
 int compass_command (struct i2c_client*,char const) ;
 int compass_mutex ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long strlen (char const*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int compass_store(struct device *dev, const char *buf, size_t count,
   const char *map)
{
 struct i2c_client *c = to_i2c_client(dev);
 int ret;
 unsigned long val;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;
 if (val >= strlen(map))
  return -EINVAL;
 val = array_index_nospec(val, strlen(map));
 mutex_lock(&compass_mutex);
 ret = compass_command(c, map[val]);
 mutex_unlock(&compass_mutex);
 if (ret < 0)
  return ret;
 return count;
}
