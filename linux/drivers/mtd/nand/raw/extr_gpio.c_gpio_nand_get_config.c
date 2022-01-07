
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_nand_platdata {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ dev_get_platdata (struct device const*) ;
 int gpio_nand_get_config_of (struct device const*,struct gpio_nand_platdata*) ;
 int memcpy (struct gpio_nand_platdata*,scalar_t__,int) ;

__attribute__((used)) static inline int gpio_nand_get_config(const struct device *dev,
           struct gpio_nand_platdata *plat)
{
 int ret = gpio_nand_get_config_of(dev, plat);

 if (!ret)
  return ret;

 if (dev_get_platdata(dev)) {
  memcpy(plat, dev_get_platdata(dev), sizeof(*plat));
  return 0;
 }

 return -EINVAL;
}
