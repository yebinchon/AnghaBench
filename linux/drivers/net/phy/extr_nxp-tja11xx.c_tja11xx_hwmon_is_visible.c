
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef scalar_t__ u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int hwmon_in ;
 scalar_t__ hwmon_in_lcrit_alarm ;
 int hwmon_temp ;
 scalar_t__ hwmon_temp_crit_alarm ;

__attribute__((used)) static umode_t tja11xx_hwmon_is_visible(const void *data,
     enum hwmon_sensor_types type,
     u32 attr, int channel)
{
 if (type == hwmon_in && attr == hwmon_in_lcrit_alarm)
  return 0444;

 if (type == hwmon_temp && attr == hwmon_temp_crit_alarm)
  return 0444;

 return 0;
}
