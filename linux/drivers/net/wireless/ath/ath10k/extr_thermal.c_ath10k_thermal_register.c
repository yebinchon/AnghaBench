
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kobj; } ;
struct thermal_cooling_device {TYPE_1__ device; } ;
struct device {TYPE_1__ device; } ;
struct TYPE_9__ {TYPE_3__* ops; int svc_map; } ;
struct TYPE_7__ {int quiet_period; struct thermal_cooling_device* cdev; } ;
struct ath10k {TYPE_5__* dev; TYPE_4__ wmi; TYPE_2__ thermal; } ;
struct TYPE_10__ {int kobj; } ;
struct TYPE_8__ {int gen_pdev_get_temperature; } ;


 int ATH10K_QUIET_PERIOD_DEFAULT ;
 int CONFIG_HWMON ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct thermal_cooling_device*) ;
 int IS_REACHABLE (int ) ;
 int PTR_ERR (struct thermal_cooling_device*) ;
 int WMI_SERVICE_THERM_THROT ;
 int ath10k_err (struct ath10k*,char*,...) ;
 int ath10k_hwmon_groups ;
 int ath10k_thermal_ops ;
 struct thermal_cooling_device* devm_hwmon_device_register_with_groups (TYPE_5__*,char*,struct ath10k*,int ) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;
 int test_bit (int ,int ) ;
 struct thermal_cooling_device* thermal_cooling_device_register (char*,struct ath10k*,int *) ;
 int thermal_cooling_device_unregister (struct thermal_cooling_device*) ;

int ath10k_thermal_register(struct ath10k *ar)
{
 struct thermal_cooling_device *cdev;
 struct device *hwmon_dev;
 int ret;

 if (!test_bit(WMI_SERVICE_THERM_THROT, ar->wmi.svc_map))
  return 0;

 cdev = thermal_cooling_device_register("ath10k_thermal", ar,
            &ath10k_thermal_ops);

 if (IS_ERR(cdev)) {
  ath10k_err(ar, "failed to setup thermal device result: %ld\n",
      PTR_ERR(cdev));
  return -EINVAL;
 }

 ret = sysfs_create_link(&ar->dev->kobj, &cdev->device.kobj,
    "cooling_device");
 if (ret) {
  ath10k_err(ar, "failed to create cooling device symlink\n");
  goto err_cooling_destroy;
 }

 ar->thermal.cdev = cdev;
 ar->thermal.quiet_period = ATH10K_QUIET_PERIOD_DEFAULT;




 if (!(ar->wmi.ops->gen_pdev_get_temperature))
  return 0;




 if (!IS_REACHABLE(CONFIG_HWMON))
  return 0;

 hwmon_dev = devm_hwmon_device_register_with_groups(ar->dev,
          "ath10k_hwmon", ar,
          ath10k_hwmon_groups);
 if (IS_ERR(hwmon_dev)) {
  ath10k_err(ar, "failed to register hwmon device: %ld\n",
      PTR_ERR(hwmon_dev));
  ret = -EINVAL;
  goto err_remove_link;
 }
 return 0;

err_remove_link:
 sysfs_remove_link(&ar->dev->kobj, "cooling_device");
err_cooling_destroy:
 thermal_cooling_device_unregister(cdev);
 return ret;
}
