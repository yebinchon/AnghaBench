
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cdev; } ;
struct TYPE_4__ {int svc_map; } ;
struct ath10k {TYPE_3__ thermal; TYPE_2__* dev; TYPE_1__ wmi; } ;
struct TYPE_5__ {int kobj; } ;


 int WMI_SERVICE_THERM_THROT ;
 int sysfs_remove_link (int *,char*) ;
 int test_bit (int ,int ) ;
 int thermal_cooling_device_unregister (int ) ;

void ath10k_thermal_unregister(struct ath10k *ar)
{
 if (!test_bit(WMI_SERVICE_THERM_THROT, ar->wmi.svc_map))
  return;

 sysfs_remove_link(&ar->dev->kobj, "cooling_device");
 thermal_cooling_device_unregister(ar->thermal.cdev);
}
