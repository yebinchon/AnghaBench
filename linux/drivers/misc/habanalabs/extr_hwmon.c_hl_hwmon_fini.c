
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int hwmon_dev; int hwmon_initialized; } ;


 int hwmon_device_unregister (int ) ;

void hl_hwmon_fini(struct hl_device *hdev)
{
 if (!hdev->hwmon_initialized)
  return;

 hwmon_device_unregister(hdev->hwmon_dev);
}
