
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int nsim_dev_ddir ;

void nsim_dev_exit(void)
{
 debugfs_remove_recursive(nsim_dev_ddir);
}
