
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosm_device {int dbg_dir; } ;


 int debugfs_remove_recursive (int ) ;

void cosm_delete_debug_dir(struct cosm_device *cdev)
{
 if (!cdev->dbg_dir)
  return;

 debugfs_remove_recursive(cdev->dbg_dir);
}
