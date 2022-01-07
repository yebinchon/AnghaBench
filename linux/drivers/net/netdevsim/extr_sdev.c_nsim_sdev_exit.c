
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int nsim_sdev_ddir ;

void nsim_sdev_exit(void)
{
 debugfs_remove_recursive(nsim_sdev_ddir);
}
