
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct apds990x_chip {unsigned long prox_thres; int mutex; } ;
typedef int ssize_t ;


 unsigned long APDS_PROX_HYSTERESIS ;
 unsigned long APDS_RANGE ;
 int EINVAL ;
 int apds990x_force_p_refresh (struct apds990x_chip*) ;
 struct apds990x_chip* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t apds990x_prox_threshold_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t len)
{
 struct apds990x_chip *chip = dev_get_drvdata(dev);
 unsigned long value;
 int ret;

 ret = kstrtoul(buf, 0, &value);
 if (ret)
  return ret;

 if ((value > APDS_RANGE) || (value == 0) ||
  (value < APDS_PROX_HYSTERESIS))
  return -EINVAL;

 mutex_lock(&chip->mutex);
 chip->prox_thres = value;

 apds990x_force_p_refresh(chip);
 mutex_unlock(&chip->mutex);
 return len;
}
