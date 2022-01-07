
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bh1770_chip {int lux_rate_index; int mutex; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (unsigned long*) ;
 int bh1770_lux_rate (struct bh1770_chip*,int) ;
 struct bh1770_chip* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 unsigned long* lux_rates_hz ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t bh1770_set_lux_rate(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct bh1770_chip *chip = dev_get_drvdata(dev);
 unsigned long rate_hz;
 int ret, i;

 ret = kstrtoul(buf, 0, &rate_hz);
 if (ret)
  return ret;

 for (i = 0; i < ARRAY_SIZE(lux_rates_hz) - 1; i++)
  if (rate_hz >= lux_rates_hz[i])
   break;

 mutex_lock(&chip->mutex);
 chip->lux_rate_index = i;
 ret = bh1770_lux_rate(chip, i);
 mutex_unlock(&chip->mutex);

 if (ret < 0)
  return ret;

 return count;
}
