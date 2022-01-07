
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dev; int cdev; int dev_ctrl; int cdev_ctrl; int cdev_sysfs_created; } ;


 int cdev_device_del (int *,int ) ;
 int hl_sysfs_fini (struct hl_device*) ;
 int kfree (int ) ;

__attribute__((used)) static void device_cdev_sysfs_del(struct hl_device *hdev)
{

 if (!hdev->cdev_sysfs_created) {
  kfree(hdev->dev_ctrl);
  kfree(hdev->dev);
  return;
 }

 hl_sysfs_fini(hdev);
 cdev_device_del(&hdev->cdev_ctrl, hdev->dev_ctrl);
 cdev_device_del(&hdev->cdev, hdev->dev);
}
