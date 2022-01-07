
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct apds990x_chip {unsigned long lux_calib; } ;
typedef int ssize_t ;


 struct apds990x_chip* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t apds990x_lux_calib_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t len)
{
 struct apds990x_chip *chip = dev_get_drvdata(dev);
 unsigned long value;
 int ret;

 ret = kstrtoul(buf, 0, &value);
 if (ret)
  return ret;

 chip->lux_calib = value;

 return len;
}
