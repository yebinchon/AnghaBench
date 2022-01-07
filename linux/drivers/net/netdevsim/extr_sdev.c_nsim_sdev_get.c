
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdevsim_shared_dev {int refcnt; int switch_id; int ddir; } ;
struct netdevsim {struct netdevsim_shared_dev* sdev; } ;


 int EINVAL ;
 int ENOMEM ;
 struct netdevsim_shared_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 scalar_t__ PTR_ERR_OR_ZERO (int ) ;
 scalar_t__ WARN_ON (int) ;
 int debugfs_create_dir (char*,int ) ;
 int kfree (struct netdevsim_shared_dev*) ;
 struct netdevsim_shared_dev* kzalloc (int,int ) ;
 int nsim_sdev_ddir ;
 int nsim_sdev_id ;
 int sprintf (char*,char*,int) ;

struct netdevsim_shared_dev *nsim_sdev_get(struct netdevsim *joinns)
{
 struct netdevsim_shared_dev *sdev;
 char sdev_ddir_name[10];
 int err;

 if (joinns) {
  if (WARN_ON(!joinns->sdev))
   return ERR_PTR(-EINVAL);
  sdev = joinns->sdev;
  sdev->refcnt++;
  return sdev;
 }

 sdev = kzalloc(sizeof(*sdev), GFP_KERNEL);
 if (!sdev)
  return ERR_PTR(-ENOMEM);
 sdev->refcnt = 1;
 sdev->switch_id = nsim_sdev_id++;

 sprintf(sdev_ddir_name, "%u", sdev->switch_id);
 sdev->ddir = debugfs_create_dir(sdev_ddir_name, nsim_sdev_ddir);
 if (IS_ERR_OR_NULL(sdev->ddir)) {
  err = PTR_ERR_OR_ZERO(sdev->ddir) ?: -EINVAL;
  goto err_sdev_free;
 }

 return sdev;

err_sdev_free:
 nsim_sdev_id--;
 kfree(sdev);
 return ERR_PTR(err);
}
