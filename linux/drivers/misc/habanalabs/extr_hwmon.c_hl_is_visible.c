
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;
__attribute__((used)) static umode_t hl_is_visible(const void *data, enum hwmon_sensor_types type,
    u32 attr, int channel)
{
 switch (type) {
 case 133:
  switch (attr) {
  case 130:
  case 129:
  case 128:
  case 132:
  case 131:
   return 0444;
  }
  break;
 case 140:
  switch (attr) {
  case 139:
  case 137:
  case 138:
   return 0444;
  }
  break;
 case 148:
  switch (attr) {
  case 147:
  case 145:
  case 146:
   return 0444;
  }
  break;
 case 144:
  switch (attr) {
  case 143:
  case 141:
  case 142:
   return 0444;
  }
  break;
 case 136:
  switch (attr) {
  case 134:
  case 135:
   return 0644;
  }
  break;
 default:
  break;
 }
 return 0;
}
