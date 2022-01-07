
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm_vif {int color; int id; } ;
struct iwl_mvm_int_sta {int sta_id; } ;
struct iwl_mvm_add_sta_cmd {int mac_id_n_color; int station_flags_msk; int station_flags; int sta_id; int add_modify; } ;
struct iwl_mvm {int dummy; } ;


 int ADD_STA ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int STA_FLG_DISABLE_TX ;
 int STA_MODE_MODIFY ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_add_sta_cmd_size (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int ,struct iwl_mvm_add_sta_cmd*) ;

__attribute__((used)) static void iwl_mvm_int_sta_modify_disable_tx(struct iwl_mvm *mvm,
           struct iwl_mvm_vif *mvmvif,
           struct iwl_mvm_int_sta *sta,
           bool disable)
{
 u32 id = FW_CMD_ID_AND_COLOR(mvmvif->id, mvmvif->color);
 struct iwl_mvm_add_sta_cmd cmd = {
  .add_modify = STA_MODE_MODIFY,
  .sta_id = sta->sta_id,
  .station_flags = disable ? cpu_to_le32(STA_FLG_DISABLE_TX) : 0,
  .station_flags_msk = cpu_to_le32(STA_FLG_DISABLE_TX),
  .mac_id_n_color = cpu_to_le32(id),
 };
 int ret;

 ret = iwl_mvm_send_cmd_pdu(mvm, ADD_STA, 0,
       iwl_mvm_add_sta_cmd_size(mvm), &cmd);
 if (ret)
  IWL_ERR(mvm, "Failed to send ADD_STA command (%d)\n", ret);
}
