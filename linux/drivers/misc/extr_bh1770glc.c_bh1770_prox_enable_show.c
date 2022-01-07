
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bh1770_chip {int prox_enable_count; int mutex; } ;
typedef int ssize_t ;


 struct bh1770_chip* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t bh1770_prox_enable_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct bh1770_chip *chip = dev_get_drvdata(dev);
 ssize_t len;

 mutex_lock(&chip->mutex);
 len = sprintf(buf, "%d\n", chip->prox_enable_count);
 mutex_unlock(&chip->mutex);
 return len;
}
