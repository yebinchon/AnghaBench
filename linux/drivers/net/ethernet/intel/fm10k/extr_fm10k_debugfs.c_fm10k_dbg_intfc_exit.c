
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int * dbg_intfc; } ;


 scalar_t__ dbg_root ;
 int debugfs_remove_recursive (int *) ;

void fm10k_dbg_intfc_exit(struct fm10k_intfc *interface)
{
 if (dbg_root)
  debugfs_remove_recursive(interface->dbg_intfc);
 interface->dbg_intfc = ((void*)0);
}
