
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_power_default; } ;
struct hl_device {int dev; TYPE_2__* asic_funcs; TYPE_1__ asic_prop; int max_power; int pm_mng_profile; } ;
struct TYPE_4__ {int (* add_device_attr ) (struct hl_device*,int *) ;} ;


 int PM_AUTO ;
 int dev_err (int ,char*,int) ;
 int device_add_groups (int ,int ) ;
 int hl_dev_attr_groups ;
 int hl_dev_clks_attr_group ;
 int stub1 (struct hl_device*,int *) ;

int hl_sysfs_init(struct hl_device *hdev)
{
 int rc;

 hdev->pm_mng_profile = PM_AUTO;
 hdev->max_power = hdev->asic_prop.max_power_default;

 hdev->asic_funcs->add_device_attr(hdev, &hl_dev_clks_attr_group);

 rc = device_add_groups(hdev->dev, hl_dev_attr_groups);
 if (rc) {
  dev_err(hdev->dev,
   "Failed to add groups to device, error %d\n", rc);
  return rc;
 }

 return 0;
}
