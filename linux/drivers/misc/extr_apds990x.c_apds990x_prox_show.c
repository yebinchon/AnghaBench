
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct apds990x_chip {int prox_data; int mutex; int prox_en; } ;
typedef int ssize_t ;


 int EIO ;
 struct apds990x_chip* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pm_runtime_suspended (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t apds990x_prox_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 ssize_t ret;
 struct apds990x_chip *chip = dev_get_drvdata(dev);

 if (pm_runtime_suspended(dev) || !chip->prox_en)
  return -EIO;

 mutex_lock(&chip->mutex);
 ret = sprintf(buf, "%d\n", chip->prox_data);
 mutex_unlock(&chip->mutex);
 return ret;
}
