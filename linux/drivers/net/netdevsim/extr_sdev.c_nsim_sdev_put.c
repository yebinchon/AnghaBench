
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdevsim_shared_dev {int ddir; scalar_t__ refcnt; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (struct netdevsim_shared_dev*) ;

void nsim_sdev_put(struct netdevsim_shared_dev *sdev)
{
 if (--sdev->refcnt)
  return;
 debugfs_remove_recursive(sdev->ddir);
 kfree(sdev);
}
