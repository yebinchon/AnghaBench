
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ab8500 {int dummy; } ;
typedef int ssize_t ;


 int AB8500_SYS_CTRL1_BLOCK ;
 int AB8500_TURN_ON_STATUS ;
 struct ab8500* dev_get_drvdata (struct device*) ;
 int get_register_interruptible (struct ab8500*,int ,int ,int*) ;
 scalar_t__ is_ab9540 (struct ab8500*) ;
 int on_stat_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int turn_on_stat_mask ;
 int turn_on_stat_set ;

__attribute__((used)) static ssize_t show_turn_on_status(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int ret;
 u8 value;
 struct ab8500 *ab8500;

 ab8500 = dev_get_drvdata(dev);
 ret = get_register_interruptible(ab8500, AB8500_SYS_CTRL1_BLOCK,
  AB8500_TURN_ON_STATUS, &value);
 if (ret < 0)
  return ret;
 if (is_ab9540(ab8500)) {
  spin_lock(&on_stat_lock);
  value = (value & turn_on_stat_mask) | turn_on_stat_set;
  spin_unlock(&on_stat_lock);
 }

 return sprintf(buf, "%#x\n", value);
}
