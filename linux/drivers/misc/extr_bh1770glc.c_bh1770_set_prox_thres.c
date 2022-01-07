
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bh1770_chip {unsigned long prox_threshold; int mutex; } ;
typedef int ssize_t ;


 unsigned long BH1770_PROX_RANGE ;
 int EINVAL ;
 int bh1770_prox_set_threshold (struct bh1770_chip*) ;
 struct bh1770_chip* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t bh1770_set_prox_thres(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct bh1770_chip *chip = dev_get_drvdata(dev);
 unsigned long value;
 int ret;

 ret = kstrtoul(buf, 0, &value);
 if (ret)
  return ret;

 if (value > BH1770_PROX_RANGE)
  return -EINVAL;

 mutex_lock(&chip->mutex);
 chip->prox_threshold = value;
 ret = bh1770_prox_set_threshold(chip);
 mutex_unlock(&chip->mutex);
 if (ret < 0)
  return ret;
 return count;
}
