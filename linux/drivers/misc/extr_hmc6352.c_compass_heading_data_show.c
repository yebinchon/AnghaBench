
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int compass_command (struct i2c_client*,char) ;
 int compass_mutex ;
 int dev_warn (struct device*,char*) ;
 int i2c_master_recv (struct i2c_client*,unsigned char*,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t compass_heading_data_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 unsigned char i2c_data[2];
 int ret;

 mutex_lock(&compass_mutex);
 ret = compass_command(client, 'A');
 if (ret != 1) {
  mutex_unlock(&compass_mutex);
  return ret;
 }
 msleep(10);
 ret = i2c_master_recv(client, i2c_data, 2);
 mutex_unlock(&compass_mutex);
 if (ret < 0) {
  dev_warn(dev, "i2c read data cmd failed\n");
  return ret;
 }
 ret = (i2c_data[0] << 8) | i2c_data[1];
 return sprintf(buf, "%d.%d\n", ret/10, ret%10);
}
