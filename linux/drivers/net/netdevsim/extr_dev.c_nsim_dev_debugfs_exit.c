
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev {int ddir; int ports_ddir; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void nsim_dev_debugfs_exit(struct nsim_dev *nsim_dev)
{
 debugfs_remove_recursive(nsim_dev->ports_ddir);
 debugfs_remove_recursive(nsim_dev->ddir);
}
