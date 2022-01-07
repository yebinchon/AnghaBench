
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct apds990x_chip {int lux_thres_lo; } ;
typedef int ssize_t ;


 int apds990x_set_lux_thresh (struct apds990x_chip*,int *,char const*) ;
 struct apds990x_chip* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t apds990x_lux_thresh_below_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t len)
{
 struct apds990x_chip *chip = dev_get_drvdata(dev);
 int ret = apds990x_set_lux_thresh(chip, &chip->lux_thres_lo, buf);

 if (ret < 0)
  return ret;
 return len;
}
