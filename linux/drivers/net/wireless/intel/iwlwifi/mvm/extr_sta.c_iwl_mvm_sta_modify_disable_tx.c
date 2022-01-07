
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {int mac_id_n_color; int sta_id; } ;
struct iwl_mvm_add_sta_cmd {int mac_id_n_color; int station_flags_msk; int station_flags; int sta_id; int add_modify; } ;
struct iwl_mvm {int dummy; } ;


 int ADD_STA ;
 int CMD_ASYNC ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int STA_FLG_DISABLE_TX ;
 int STA_MODE_MODIFY ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_add_sta_cmd_size (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int ,struct iwl_mvm_add_sta_cmd*) ;

void iwl_mvm_sta_modify_disable_tx(struct iwl_mvm *mvm,
       struct iwl_mvm_sta *mvmsta, bool disable)
{
 struct iwl_mvm_add_sta_cmd cmd = {
  .add_modify = STA_MODE_MODIFY,
  .sta_id = mvmsta->sta_id,
  .station_flags = disable ? cpu_to_le32(STA_FLG_DISABLE_TX) : 0,
  .station_flags_msk = cpu_to_le32(STA_FLG_DISABLE_TX),
  .mac_id_n_color = cpu_to_le32(mvmsta->mac_id_n_color),
 };
 int ret;

 ret = iwl_mvm_send_cmd_pdu(mvm, ADD_STA, CMD_ASYNC,
       iwl_mvm_add_sta_cmd_size(mvm), &cmd);
 if (ret)
  IWL_ERR(mvm, "Failed to send ADD_STA command (%d)\n", ret);
}
