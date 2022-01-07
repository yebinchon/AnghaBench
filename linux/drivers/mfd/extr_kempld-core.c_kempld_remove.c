
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct kempld_platform_data {int (* release_hardware_mutex ) (struct kempld_device_data*) ;} ;
struct kempld_device_data {TYPE_1__* dev; } ;
struct TYPE_2__ {int kobj; } ;


 struct kempld_platform_data* dev_get_platdata (TYPE_1__*) ;
 int mfd_remove_devices (int *) ;
 struct kempld_device_data* platform_get_drvdata (struct platform_device*) ;
 int pld_attr_group ;
 int stub1 (struct kempld_device_data*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int kempld_remove(struct platform_device *pdev)
{
 struct kempld_device_data *pld = platform_get_drvdata(pdev);
 const struct kempld_platform_data *pdata = dev_get_platdata(pld->dev);

 sysfs_remove_group(&pld->dev->kobj, &pld_attr_group);

 mfd_remove_devices(&pdev->dev);
 pdata->release_hardware_mutex(pld);

 return 0;
}
