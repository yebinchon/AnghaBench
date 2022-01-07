
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_device {int dummy; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EINVAL ;
 int ENODEV ;
 struct hl_device* dev_get_drvdata (struct device*) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 long hl_get_current (struct hl_device*,int,int ) ;
 long hl_get_fan_speed (struct hl_device*,int,int ) ;
 long hl_get_pwm_info (struct hl_device*,int,int ) ;
 long hl_get_temperature (struct hl_device*,int,int ) ;
 long hl_get_voltage (struct hl_device*,int,int ) ;
__attribute__((used)) static int hl_read(struct device *dev, enum hwmon_sensor_types type,
   u32 attr, int channel, long *val)
{
 struct hl_device *hdev = dev_get_drvdata(dev);

 if (hl_device_disabled_or_in_reset(hdev))
  return -ENODEV;

 switch (type) {
 case 133:
  switch (attr) {
  case 130:
  case 129:
  case 132:
  case 128:
  case 131:
   break;
  default:
   return -EINVAL;
  }

  *val = hl_get_temperature(hdev, channel, attr);
  break;
 case 140:
  switch (attr) {
  case 139:
  case 137:
  case 138:
   break;
  default:
   return -EINVAL;
  }

  *val = hl_get_voltage(hdev, channel, attr);
  break;
 case 148:
  switch (attr) {
  case 147:
  case 145:
  case 146:
   break;
  default:
   return -EINVAL;
  }

  *val = hl_get_current(hdev, channel, attr);
  break;
 case 144:
  switch (attr) {
  case 143:
  case 141:
  case 142:
   break;
  default:
   return -EINVAL;
  }
  *val = hl_get_fan_speed(hdev, channel, attr);
  break;
 case 136:
  switch (attr) {
  case 134:
  case 135:
   break;
  default:
   return -EINVAL;
  }
  *val = hl_get_pwm_info(hdev, channel, attr);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
