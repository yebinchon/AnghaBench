
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int MAX77802_RTC_END ;
 unsigned int MAX77802_RTC_INT ;

__attribute__((used)) static bool max77802_rtc_is_accessible_reg(struct device *dev,
        unsigned int reg)
{
 return (reg >= MAX77802_RTC_INT && reg < MAX77802_RTC_END);
}
