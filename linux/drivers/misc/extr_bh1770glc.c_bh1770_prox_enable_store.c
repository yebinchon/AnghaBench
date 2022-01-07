
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bh1770_chip {scalar_t__ prox_enable_count; int mutex; scalar_t__ prox_data; } ;
typedef int ssize_t ;


 int bh1770_prox_mode_control (struct bh1770_chip*) ;
 struct bh1770_chip* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_suspended (struct device*) ;

__attribute__((used)) static ssize_t bh1770_prox_enable_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct bh1770_chip *chip = dev_get_drvdata(dev);
 unsigned long value;
 int ret;

 ret = kstrtoul(buf, 0, &value);
 if (ret)
  return ret;

 mutex_lock(&chip->mutex);

 if (!chip->prox_enable_count)
  chip->prox_data = 0;

 if (value)
  chip->prox_enable_count++;
 else if (chip->prox_enable_count > 0)
  chip->prox_enable_count--;
 else
  goto leave;


 if (!pm_runtime_suspended(dev))
  bh1770_prox_mode_control(chip);
leave:
 mutex_unlock(&chip->mutex);
 return count;
}
