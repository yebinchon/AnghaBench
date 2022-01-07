
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int active_wks; } ;
struct iwl_fw_runtime {TYPE_2__ dump; TYPE_3__* trans; int ops_ctx; TYPE_1__* ops; } ;
struct iwl_fw_dbg_params {int member_0; } ;
struct TYPE_6__ {int status; } ;
struct TYPE_4__ {int (* fw_running ) (int ) ;} ;


 int IWL_DEBUG_FW_INFO (struct iwl_fw_runtime*,char*) ;
 int IWL_ERR (struct iwl_fw_runtime*,char*) ;
 int STATUS_TRANS_DEAD ;
 int clear_bit (int ,int *) ;
 scalar_t__ iwl_fw_dbg_stop_restart_recording (struct iwl_fw_runtime*,struct iwl_fw_dbg_params*,int) ;
 int iwl_fw_error_dump (struct iwl_fw_runtime*) ;
 int iwl_fw_error_ini_dump (struct iwl_fw_runtime*,int ) ;
 int iwl_fw_free_dump_desc (struct iwl_fw_runtime*) ;
 scalar_t__ iwl_trans_dbg_ini_valid (TYPE_3__*) ;
 int stub1 (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwl_fw_dbg_collect_sync(struct iwl_fw_runtime *fwrt, u8 wk_idx)
{
 struct iwl_fw_dbg_params params = {0};

 if (!test_bit(wk_idx, &fwrt->dump.active_wks))
  return;

 if (fwrt->ops && fwrt->ops->fw_running &&
     !fwrt->ops->fw_running(fwrt->ops_ctx)) {
  IWL_ERR(fwrt, "Firmware not running - cannot dump error\n");
  iwl_fw_free_dump_desc(fwrt);
  goto out;
 }


 if (test_bit(STATUS_TRANS_DEAD, &fwrt->trans->status)) {
  IWL_ERR(fwrt, "Skip fw error dump since bus is dead\n");
  goto out;
 }

 if (iwl_fw_dbg_stop_restart_recording(fwrt, &params, 1)) {
  IWL_ERR(fwrt, "Failed to stop DBGC recording, aborting dump\n");
  goto out;
 }

 IWL_DEBUG_FW_INFO(fwrt, "WRT: Data collection start\n");
 if (iwl_trans_dbg_ini_valid(fwrt->trans))
  iwl_fw_error_ini_dump(fwrt, wk_idx);
 else
  iwl_fw_error_dump(fwrt);
 IWL_DEBUG_FW_INFO(fwrt, "WRT: Data collection done\n");

 iwl_fw_dbg_stop_restart_recording(fwrt, &params, 0);

out:
 clear_bit(wk_idx, &fwrt->dump.active_wks);
}
