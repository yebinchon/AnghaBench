
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ IWLAGN_RTC_DATA_LOWER_BOUND ;
 scalar_t__ IWLAGN_RTC_DATA_UPPER_BOUND ;

int iwlagn_hw_valid_rtc_data_addr(u32 addr)
{
 return (addr >= IWLAGN_RTC_DATA_LOWER_BOUND) &&
  (addr < IWLAGN_RTC_DATA_UPPER_BOUND);
}
