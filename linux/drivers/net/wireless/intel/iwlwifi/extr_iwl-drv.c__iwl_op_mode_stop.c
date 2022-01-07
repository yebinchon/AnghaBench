
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_drv {int * dbgfs_op_mode; int * op_mode; } ;


 int debugfs_remove_recursive (int *) ;
 int iwl_op_mode_stop (int *) ;

__attribute__((used)) static void _iwl_op_mode_stop(struct iwl_drv *drv)
{

 if (drv->op_mode) {
  iwl_op_mode_stop(drv->op_mode);
  drv->op_mode = ((void*)0);





 }
}
