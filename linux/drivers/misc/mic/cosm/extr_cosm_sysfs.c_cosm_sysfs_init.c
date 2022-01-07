
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosm_device {int attr_group; } ;


 int cosm_default_groups ;

void cosm_sysfs_init(struct cosm_device *cdev)
{
 cdev->attr_group = cosm_default_groups;
}
