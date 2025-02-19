
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bh1770_chip {unsigned long prox_abs_thres; } ;
typedef int ssize_t ;


 unsigned long BH1770_PROX_RANGE ;
 int EINVAL ;
 struct bh1770_chip* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t bh1770_prox_abs_thres_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t len)
{
 struct bh1770_chip *chip = dev_get_drvdata(dev);
 unsigned long value;
 int ret;

 ret = kstrtoul(buf, 0, &value);
 if (ret)
  return ret;

 if (value > BH1770_PROX_RANGE)
  return -EINVAL;

 chip->prox_abs_thres = value;

 return len;
}
