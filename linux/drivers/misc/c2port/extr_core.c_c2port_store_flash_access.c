
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct c2port_device {int name; int dev; int mutex; } ;
typedef int ssize_t ;


 int EINVAL ;
 int __c2port_store_flash_access (struct c2port_device*,int) ;
 int dev_err (int ,char*,int ) ;
 struct c2port_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t c2port_store_flash_access(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct c2port_device *c2dev = dev_get_drvdata(dev);
 int status;
 ssize_t ret;

 ret = sscanf(buf, "%d", &status);
 if (ret != 1)
  return -EINVAL;

 mutex_lock(&c2dev->mutex);
 ret = __c2port_store_flash_access(c2dev, status);
 mutex_unlock(&c2dev->mutex);

 if (ret < 0) {
  dev_err(c2dev->dev, "cannot enable %s flash programming\n",
   c2dev->name);
  return ret;
 }

 return count;
}
