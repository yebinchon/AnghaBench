
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int hwmon_power ;


 int hwmon_temp ;




__attribute__((used)) static umode_t
nfp_hwmon_is_visible(const void *data, enum hwmon_sensor_types type, u32 attr,
       int channel)
{
 if (type == hwmon_temp) {
  switch (attr) {
  case 129:
  case 130:
  case 128:
   return 0444;
  }
 } else if (type == hwmon_power) {
  switch (attr) {
  case 132:
  case 131:
   return 0444;
  }
 }
 return 0;
}
