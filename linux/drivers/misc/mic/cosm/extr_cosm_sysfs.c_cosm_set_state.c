
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct cosm_device {size_t state; int state_sysfs; int dev; } ;


 int * cosm_state_string ;
 int dev_dbg (int *,char*,int ,int ) ;
 int sysfs_notify_dirent (int ) ;

void cosm_set_state(struct cosm_device *cdev, u8 state)
{
 dev_dbg(&cdev->dev, "State %s -> %s\n",
  cosm_state_string[cdev->state],
  cosm_state_string[state]);
 cdev->state = state;
 sysfs_notify_dirent(cdev->state_sysfs);
}
