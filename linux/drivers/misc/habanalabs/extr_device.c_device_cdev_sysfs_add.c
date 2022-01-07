
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int cdev_sysfs_created; int dev; int cdev; int dev_ctrl; int cdev_ctrl; } ;


 int cdev_device_add (int *,int ) ;
 int cdev_device_del (int *,int ) ;
 int dev_err (int ,char*) ;
 int hl_sysfs_init (struct hl_device*) ;

__attribute__((used)) static int device_cdev_sysfs_add(struct hl_device *hdev)
{
 int rc;

 rc = cdev_device_add(&hdev->cdev, hdev->dev);
 if (rc) {
  dev_err(hdev->dev,
   "failed to add a char device to the system\n");
  return rc;
 }

 rc = cdev_device_add(&hdev->cdev_ctrl, hdev->dev_ctrl);
 if (rc) {
  dev_err(hdev->dev,
   "failed to add a control char device to the system\n");
  goto delete_cdev_device;
 }


 rc = hl_sysfs_init(hdev);
 if (rc) {
  dev_err(hdev->dev, "failed to initialize sysfs\n");
  goto delete_ctrl_cdev_device;
 }

 hdev->cdev_sysfs_created = 1;

 return 0;

delete_ctrl_cdev_device:
 cdev_device_del(&hdev->cdev_ctrl, hdev->dev_ctrl);
delete_cdev_device:
 cdev_device_del(&hdev->cdev, hdev->dev);
 return rc;
}
