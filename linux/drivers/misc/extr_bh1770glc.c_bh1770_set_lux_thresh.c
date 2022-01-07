
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;
struct bh1770_chip {int mutex; int lux_threshold_lo; int lux_threshold_hi; int lux_wait_result; } ;
typedef int ssize_t ;


 unsigned long BH1770_LUX_RANGE ;
 int EINVAL ;
 int bh1770_lux_update_thresholds (struct bh1770_chip*,int ,int ) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t bh1770_set_lux_thresh(struct bh1770_chip *chip, u16 *target,
    const char *buf)
{
 unsigned long thresh;
 int ret;

 ret = kstrtoul(buf, 0, &thresh);
 if (ret)
  return ret;

 if (thresh > BH1770_LUX_RANGE)
  return -EINVAL;

 mutex_lock(&chip->mutex);
 *target = thresh;




 if (!chip->lux_wait_result)
  ret = bh1770_lux_update_thresholds(chip,
      chip->lux_threshold_hi,
      chip->lux_threshold_lo);
 mutex_unlock(&chip->mutex);
 return ret;

}
