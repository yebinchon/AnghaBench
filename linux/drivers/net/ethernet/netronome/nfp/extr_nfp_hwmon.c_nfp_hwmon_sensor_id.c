
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EINVAL ;
 int NFP_SENSOR_ASSEMBLY_POWER ;
 int NFP_SENSOR_CHIP_TEMPERATURE ;
 int hwmon_power ;
 int hwmon_temp ;

__attribute__((used)) static int nfp_hwmon_sensor_id(enum hwmon_sensor_types type, int channel)
{
 if (type == hwmon_temp)
  return NFP_SENSOR_CHIP_TEMPERATURE;
 if (type == hwmon_power)
  return NFP_SENSOR_ASSEMBLY_POWER + channel;
 return -EINVAL;
}
