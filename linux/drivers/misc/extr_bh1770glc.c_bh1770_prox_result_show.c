
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bh1770_chip {int prox_data; int mutex; scalar_t__ prox_enable_count; } ;
typedef int ssize_t ;


 int EIO ;
 struct bh1770_chip* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_suspended (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t bh1770_prox_result_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct bh1770_chip *chip = dev_get_drvdata(dev);
 ssize_t ret;

 mutex_lock(&chip->mutex);
 if (chip->prox_enable_count && !pm_runtime_suspended(dev))
  ret = sprintf(buf, "%d\n", chip->prox_data);
 else
  ret = -EIO;
 mutex_unlock(&chip->mutex);
 return ret;
}
