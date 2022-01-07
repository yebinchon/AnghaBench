
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_fw_runtime {int trans; } ;


 int IWL_FW_RUNTIME_DUMP_WK_NUM ;
 int iwl_dbg_tlv_del_timers (int ) ;
 int iwl_fw_dbg_collect_sync (struct iwl_fw_runtime*,int) ;
 int iwl_fw_dbg_stop_restart_recording (struct iwl_fw_runtime*,int *,int) ;

void iwl_fw_dbg_stop_sync(struct iwl_fw_runtime *fwrt)
{
 int i;

 iwl_dbg_tlv_del_timers(fwrt->trans);
 for (i = 0; i < IWL_FW_RUNTIME_DUMP_WK_NUM; i++)
  iwl_fw_dbg_collect_sync(fwrt, i);

 iwl_fw_dbg_stop_restart_recording(fwrt, ((void*)0), 1);
}
