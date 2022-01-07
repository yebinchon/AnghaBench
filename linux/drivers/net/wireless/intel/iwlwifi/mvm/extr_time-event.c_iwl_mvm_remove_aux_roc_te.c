
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct iwl_mvm_vif {int color; int id; } ;
struct iwl_mvm_time_event_data {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_hs20_roc_req {void* event_unique_id; void* id_and_color; void* action; } ;
typedef int aux_cmd ;


 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int FW_CTXT_ACTION_REMOVE ;
 int HOT_SPOT_CMD ;
 int IWL_DEBUG_TE (struct iwl_mvm*,char*,int ) ;
 scalar_t__ WARN_ON (int) ;
 int __iwl_mvm_remove_time_event (struct iwl_mvm*,struct iwl_mvm_time_event_data*,int *) ;
 void* cpu_to_le32 (int ) ;
 scalar_t__ iwl_mvm_chan_info_padding (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,scalar_t__,struct iwl_hs20_roc_req*) ;
 int le32_to_cpu (void*) ;

__attribute__((used)) static void iwl_mvm_remove_aux_roc_te(struct iwl_mvm *mvm,
          struct iwl_mvm_vif *mvmvif,
          struct iwl_mvm_time_event_data *te_data)
{
 struct iwl_hs20_roc_req aux_cmd = {};
 u16 len = sizeof(aux_cmd) - iwl_mvm_chan_info_padding(mvm);

 u32 uid;
 int ret;

 if (!__iwl_mvm_remove_time_event(mvm, te_data, &uid))
  return;

 aux_cmd.event_unique_id = cpu_to_le32(uid);
 aux_cmd.action = cpu_to_le32(FW_CTXT_ACTION_REMOVE);
 aux_cmd.id_and_color =
  cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id, mvmvif->color));
 IWL_DEBUG_TE(mvm, "Removing BSS AUX ROC TE 0x%x\n",
       le32_to_cpu(aux_cmd.event_unique_id));
 ret = iwl_mvm_send_cmd_pdu(mvm, HOT_SPOT_CMD, 0,
       len, &aux_cmd);

 if (WARN_ON(ret))
  return;
}
