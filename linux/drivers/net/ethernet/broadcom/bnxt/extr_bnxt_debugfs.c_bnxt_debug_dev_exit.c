
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int * debugfs_pdev; } ;


 int debugfs_remove_recursive (int *) ;

void bnxt_debug_dev_exit(struct bnxt *bp)
{
 if (bp) {
  debugfs_remove_recursive(bp->debugfs_pdev);
  bp->debugfs_pdev = ((void*)0);
 }
}
