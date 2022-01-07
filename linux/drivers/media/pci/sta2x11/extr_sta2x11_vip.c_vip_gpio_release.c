
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int,char const*) ;
 int gpio_free (int) ;
 scalar_t__ gpio_is_valid (int) ;
 int gpio_unexport (int) ;

__attribute__((used)) static void vip_gpio_release(struct device *dev, int pin, const char *name)
{
 if (gpio_is_valid(pin)) {
  dev_dbg(dev, "releasing pin %d (%s)\n", pin, name);
  gpio_unexport(pin);
  gpio_free(pin);
 }
}
