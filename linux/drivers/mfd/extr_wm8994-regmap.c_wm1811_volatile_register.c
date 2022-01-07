
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994 {int cust_id; int revision; } ;
struct device {int dummy; } ;



 struct wm8994* dev_get_drvdata (struct device*) ;
 int wm8994_volatile_register (struct device*,unsigned int) ;

__attribute__((used)) static bool wm1811_volatile_register(struct device *dev, unsigned int reg)
{
 struct wm8994 *wm8994 = dev_get_drvdata(dev);

 switch (reg) {
 case 128:
  if (wm8994->cust_id > 1 || wm8994->revision > 1)
   return 1;
  else
   return 0;
 default:
  return wm8994_volatile_register(dev, reg);
 }
}
