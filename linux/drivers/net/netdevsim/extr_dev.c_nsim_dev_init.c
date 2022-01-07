
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRV_NAME ;
 int ENOMEM ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int debugfs_create_dir (int ,int *) ;
 int nsim_dev_ddir ;

int nsim_dev_init(void)
{
 nsim_dev_ddir = debugfs_create_dir(DRV_NAME, ((void*)0));
 if (IS_ERR_OR_NULL(nsim_dev_ddir))
  return -ENOMEM;
 return 0;
}
