
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int MAX77802_RTC_INT ;
 unsigned int MAX77802_RTC_UPDATE0 ;
 unsigned int MAX77802_RTC_UPDATE1 ;

__attribute__((used)) static bool max77802_rtc_is_precious_reg(struct device *dev, unsigned int reg)
{
 return (reg == MAX77802_RTC_INT ||
  reg == MAX77802_RTC_UPDATE0 ||
  reg == MAX77802_RTC_UPDATE1);
}
