
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans {int dev; } ;
struct iwl_fw_runtime_ops {int dummy; } ;
struct TYPE_4__ {TYPE_1__* wks; int conf; } ;
struct iwl_fw_runtime {TYPE_2__ dump; void* ops_ctx; struct iwl_fw_runtime_ops const* ops; int dev; struct iwl_fw const* fw; struct iwl_trans* trans; } ;
struct iwl_fw {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int idx; int wk; } ;


 int FW_DBG_INVALID ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IWL_FW_RUNTIME_DUMP_WK_NUM ;
 int iwl_fw_error_dump_wk ;
 int iwl_fwrt_dbgfs_register (struct iwl_fw_runtime*,struct dentry*) ;
 int memset (struct iwl_fw_runtime*,int ,int) ;

void iwl_fw_runtime_init(struct iwl_fw_runtime *fwrt, struct iwl_trans *trans,
   const struct iwl_fw *fw,
   const struct iwl_fw_runtime_ops *ops, void *ops_ctx,
   struct dentry *dbgfs_dir)
{
 int i;

 memset(fwrt, 0, sizeof(*fwrt));
 fwrt->trans = trans;
 fwrt->fw = fw;
 fwrt->dev = trans->dev;
 fwrt->dump.conf = FW_DBG_INVALID;
 fwrt->ops = ops;
 fwrt->ops_ctx = ops_ctx;
 for (i = 0; i < IWL_FW_RUNTIME_DUMP_WK_NUM; i++) {
  fwrt->dump.wks[i].idx = i;
  INIT_DELAYED_WORK(&fwrt->dump.wks[i].wk, iwl_fw_error_dump_wk);
 }
 iwl_fwrt_dbgfs_register(fwrt, dbgfs_dir);
}
