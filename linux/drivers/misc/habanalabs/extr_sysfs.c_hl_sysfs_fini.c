
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dev; } ;


 int device_remove_groups (int ,int ) ;
 int hl_dev_attr_groups ;

void hl_sysfs_fini(struct hl_device *hdev)
{
 device_remove_groups(hdev->dev, hl_dev_attr_groups);
}
