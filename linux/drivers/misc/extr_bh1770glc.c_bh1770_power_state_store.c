
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bh1770_chip {int lux_wait_result; int mutex; int lux_rate_index; } ;
typedef size_t ssize_t ;


 int BH1770_ENABLE ;
 int BH1770_LUX_DEF_THRES ;
 size_t bh1770_lux_interrupt_control (struct bh1770_chip*,int ) ;
 size_t bh1770_lux_rate (struct bh1770_chip*,int ) ;
 int bh1770_lux_update_thresholds (struct bh1770_chip*,int ,int ) ;
 int bh1770_prox_mode_control (struct bh1770_chip*) ;
 struct bh1770_chip* dev_get_drvdata (struct device*) ;
 size_t kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int pm_runtime_suspended (struct device*) ;

__attribute__((used)) static ssize_t bh1770_power_state_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct bh1770_chip *chip = dev_get_drvdata(dev);
 unsigned long value;
 ssize_t ret;

 ret = kstrtoul(buf, 0, &value);
 if (ret)
  return ret;

 mutex_lock(&chip->mutex);
 if (value) {
  pm_runtime_get_sync(dev);

  ret = bh1770_lux_rate(chip, chip->lux_rate_index);
  if (ret < 0) {
   pm_runtime_put(dev);
   goto leave;
  }

  ret = bh1770_lux_interrupt_control(chip, BH1770_ENABLE);
  if (ret < 0) {
   pm_runtime_put(dev);
   goto leave;
  }


  bh1770_lux_update_thresholds(chip, BH1770_LUX_DEF_THRES,
     BH1770_LUX_DEF_THRES);

  chip->lux_wait_result = 1;
  bh1770_prox_mode_control(chip);
 } else if (!pm_runtime_suspended(dev)) {
  pm_runtime_put(dev);
 }
 ret = count;
leave:
 mutex_unlock(&chip->mutex);
 return ret;
}
