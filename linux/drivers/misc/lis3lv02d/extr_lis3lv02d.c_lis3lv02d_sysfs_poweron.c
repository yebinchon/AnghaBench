
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {scalar_t__ pm_dev; } ;


 int LIS3_SYSFS_POWERDOWN_DELAY ;
 int pm_runtime_get_sync (scalar_t__) ;
 int pm_runtime_put_noidle (scalar_t__) ;
 int pm_schedule_suspend (scalar_t__,int ) ;

__attribute__((used)) static void lis3lv02d_sysfs_poweron(struct lis3lv02d *lis3)
{
 if (lis3->pm_dev) {
  pm_runtime_get_sync(lis3->pm_dev);
  pm_runtime_put_noidle(lis3->pm_dev);
  pm_schedule_suspend(lis3->pm_dev, LIS3_SYSFS_POWERDOWN_DELAY);
 }
}
