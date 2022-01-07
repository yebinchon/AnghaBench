
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;




 unsigned int MAX8907_REG_RTC_YEAR2 ;

__attribute__((used)) static bool max8907_rtc_is_volatile_reg(struct device *dev, unsigned int reg)
{
 if (reg <= MAX8907_REG_RTC_YEAR2)
  return 1;

 switch (reg) {
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
