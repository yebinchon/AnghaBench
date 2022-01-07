
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct apds990x_chip {int mutex; int lux_wait_fresh_res; } ;
typedef int ssize_t ;


 unsigned long APDS_RANGE ;
 int EINVAL ;
 int apds990x_refresh_athres (struct apds990x_chip*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t apds990x_set_lux_thresh(struct apds990x_chip *chip, u32 *target,
    const char *buf)
{
 unsigned long thresh;
 int ret;

 ret = kstrtoul(buf, 0, &thresh);
 if (ret)
  return ret;

 if (thresh > APDS_RANGE)
  return -EINVAL;

 mutex_lock(&chip->mutex);
 *target = thresh;




 if (!chip->lux_wait_fresh_res)
  apds990x_refresh_athres(chip);
 mutex_unlock(&chip->mutex);
 return ret;

}
