
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
 int hl_set_pwm_info (struct hl_device*,int,int ,long) ;




__attribute__((used)) static int hl_write(struct device *dev, enum hwmon_sensor_types type,
   u32 attr, int channel, long val)
{
 struct hl_device *hdev = dev_get_drvdata(dev);

 if (hl_device_disabled_or_in_reset(hdev))
  return -ENODEV;

 switch (type) {
 case 130:
  switch (attr) {
  case 128:
  case 129:
   break;
  default:
   return -EINVAL;
  }
  hl_set_pwm_info(hdev, channel, attr, val);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
