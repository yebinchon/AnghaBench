
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_time_event_notif {int status; int action; } ;
struct iwl_mvm_time_event_data {int id; int vif; } ;
struct iwl_mvm {int fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_time_event {TYPE_1__* time_events; } ;
struct TYPE_2__ {int status_bitmap; int action_bitmap; int id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BIT (int) ;
 int FW_DBG_TRIGGER_TIME_EVENT ;
 int ieee80211_vif_to_wdev (int ) ;
 int iwl_fw_dbg_collect_trig (int *,struct iwl_fw_dbg_trigger_tlv*,char*,int,int,int) ;
 struct iwl_fw_dbg_trigger_tlv* iwl_fw_dbg_trigger_on (int *,int ,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void iwl_mvm_te_check_trigger(struct iwl_mvm *mvm,
         struct iwl_time_event_notif *notif,
         struct iwl_mvm_time_event_data *te_data)
{
 struct iwl_fw_dbg_trigger_tlv *trig;
 struct iwl_fw_dbg_trigger_time_event *te_trig;
 int i;

 trig = iwl_fw_dbg_trigger_on(&mvm->fwrt,
         ieee80211_vif_to_wdev(te_data->vif),
         FW_DBG_TRIGGER_TIME_EVENT);
 if (!trig)
  return;

 te_trig = (void *)trig->data;

 for (i = 0; i < ARRAY_SIZE(te_trig->time_events); i++) {
  u32 trig_te_id = le32_to_cpu(te_trig->time_events[i].id);
  u32 trig_action_bitmap =
   le32_to_cpu(te_trig->time_events[i].action_bitmap);
  u32 trig_status_bitmap =
   le32_to_cpu(te_trig->time_events[i].status_bitmap);

  if (trig_te_id != te_data->id ||
      !(trig_action_bitmap & le32_to_cpu(notif->action)) ||
      !(trig_status_bitmap & BIT(le32_to_cpu(notif->status))))
   continue;

  iwl_fw_dbg_collect_trig(&mvm->fwrt, trig,
     "Time event %d Action 0x%x received status: %d",
     te_data->id,
     le32_to_cpu(notif->action),
     le32_to_cpu(notif->status));
  break;
 }
}
