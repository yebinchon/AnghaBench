
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int time_cmd ;
struct iwl_time_event_cmd {void* id; void* id_and_color; void* action; } ;
struct iwl_mvm_vif {int color; int id; } ;
struct iwl_mvm_time_event_data {int dummy; } ;
struct iwl_mvm {int dummy; } ;


 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int FW_CTXT_ACTION_REMOVE ;
 int IWL_DEBUG_TE (struct iwl_mvm*,char*,int ) ;
 int TIME_EVENT_CMD ;
 scalar_t__ WARN_ON (int) ;
 int __iwl_mvm_remove_time_event (struct iwl_mvm*,struct iwl_mvm_time_event_data*,int *) ;
 void* cpu_to_le32 (int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_time_event_cmd*) ;
 int le32_to_cpu (void*) ;

void iwl_mvm_remove_time_event(struct iwl_mvm *mvm,
          struct iwl_mvm_vif *mvmvif,
          struct iwl_mvm_time_event_data *te_data)
{
 struct iwl_time_event_cmd time_cmd = {};
 u32 uid;
 int ret;

 if (!__iwl_mvm_remove_time_event(mvm, te_data, &uid))
  return;


 time_cmd.id = cpu_to_le32(uid);
 time_cmd.action = cpu_to_le32(FW_CTXT_ACTION_REMOVE);
 time_cmd.id_and_color =
  cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id, mvmvif->color));

 IWL_DEBUG_TE(mvm, "Removing TE 0x%x\n", le32_to_cpu(time_cmd.id));
 ret = iwl_mvm_send_cmd_pdu(mvm, TIME_EVENT_CMD, 0,
       sizeof(time_cmd), &time_cmd);
 if (WARN_ON(ret))
  return;
}
