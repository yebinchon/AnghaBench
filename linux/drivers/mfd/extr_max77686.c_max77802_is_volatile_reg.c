
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ max77802_pmic_is_volatile_reg (struct device*,unsigned int) ;
 scalar_t__ max77802_rtc_is_volatile_reg (struct device*,unsigned int) ;

__attribute__((used)) static bool max77802_is_volatile_reg(struct device *dev, unsigned int reg)
{
 return (max77802_pmic_is_volatile_reg(dev, reg) ||
  max77802_rtc_is_volatile_reg(dev, reg));
}
