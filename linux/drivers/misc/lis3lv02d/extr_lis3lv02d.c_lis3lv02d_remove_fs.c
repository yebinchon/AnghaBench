
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lis3lv02d {int reg_cache; scalar_t__ pm_dev; TYPE_2__* pdev; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int kfree (int ) ;
 int lis3lv02d_attribute_group ;
 int lis3lv02d_poweroff (struct lis3lv02d*) ;
 int platform_device_unregister (TYPE_2__*) ;
 int pm_runtime_barrier (scalar_t__) ;
 int pm_runtime_disable (scalar_t__) ;
 int pm_runtime_set_suspended (scalar_t__) ;
 int pm_runtime_suspended (scalar_t__) ;
 int sysfs_remove_group (int *,int *) ;

int lis3lv02d_remove_fs(struct lis3lv02d *lis3)
{
 sysfs_remove_group(&lis3->pdev->dev.kobj, &lis3lv02d_attribute_group);
 platform_device_unregister(lis3->pdev);
 if (lis3->pm_dev) {

  pm_runtime_barrier(lis3->pm_dev);


  if (!pm_runtime_suspended(lis3->pm_dev))
   lis3lv02d_poweroff(lis3);

  pm_runtime_disable(lis3->pm_dev);
  pm_runtime_set_suspended(lis3->pm_dev);
 }
 kfree(lis3->reg_cache);
 return 0;
}
