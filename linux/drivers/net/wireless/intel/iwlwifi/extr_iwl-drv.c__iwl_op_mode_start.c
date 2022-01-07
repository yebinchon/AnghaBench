
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwlwifi_opmode_table {int name; struct iwl_op_mode_ops* ops; } ;
struct iwl_op_mode_ops {struct iwl_op_mode* (* start ) (TYPE_1__*,int ,int *,struct dentry*) ;} ;
struct iwl_op_mode {int dummy; } ;
struct iwl_drv {struct dentry* dbgfs_op_mode; int fw; TYPE_1__* trans; int dbgfs_drv; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int cfg; } ;


 struct dentry* debugfs_create_dir (int ,int ) ;
 int debugfs_remove_recursive (struct dentry*) ;
 struct iwl_op_mode* stub1 (TYPE_1__*,int ,int *,struct dentry*) ;

__attribute__((used)) static struct iwl_op_mode *
_iwl_op_mode_start(struct iwl_drv *drv, struct iwlwifi_opmode_table *op)
{
 const struct iwl_op_mode_ops *ops = op->ops;
 struct dentry *dbgfs_dir = ((void*)0);
 struct iwl_op_mode *op_mode = ((void*)0);







 op_mode = ops->start(drv->trans, drv->trans->cfg, &drv->fw, dbgfs_dir);
 return op_mode;
}
