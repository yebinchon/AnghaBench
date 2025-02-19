
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iwl_tx_path_flush_cmd {int tid_mask; int sta_id; } ;
struct iwl_mvm {int dummy; } ;
typedef int flush_cmd ;


 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int TXPATH_FLUSH ;
 int WARN_ON (int) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_tx_path_flush_cmd*) ;

int iwl_mvm_flush_sta_tids(struct iwl_mvm *mvm, u32 sta_id,
      u16 tids, u32 flags)
{
 int ret;
 struct iwl_tx_path_flush_cmd flush_cmd = {
  .sta_id = cpu_to_le32(sta_id),
  .tid_mask = cpu_to_le16(tids),
 };

 WARN_ON(!iwl_mvm_has_new_tx_api(mvm));

 ret = iwl_mvm_send_cmd_pdu(mvm, TXPATH_FLUSH, flags,
       sizeof(flush_cmd), &flush_cmd);
 if (ret)
  IWL_ERR(mvm, "Failed to send flush command (%d)\n", ret);
 return ret;
}
