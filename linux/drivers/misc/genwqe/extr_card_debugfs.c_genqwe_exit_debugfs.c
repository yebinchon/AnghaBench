
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int debugfs_root; } ;


 int debugfs_remove_recursive (int ) ;

void genqwe_exit_debugfs(struct genwqe_dev *cd)
{
 debugfs_remove_recursive(cd->debugfs_root);
}
