
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int * dbgfs_dir; } ;


 int debugfs_remove_recursive (int *) ;

void mei_dbgfs_deregister(struct mei_device *dev)
{
 if (!dev->dbgfs_dir)
  return;
 debugfs_remove_recursive(dev->dbgfs_dir);
 dev->dbgfs_dir = ((void*)0);
}
