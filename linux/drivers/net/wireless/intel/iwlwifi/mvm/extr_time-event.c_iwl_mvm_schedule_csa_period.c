
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_time_event_cmd {int repeat; int policy; void* interval; void* duration; int max_frags; void* apply_time; void* id; void* id_and_color; void* action; } ;
struct iwl_mvm_time_event_data {scalar_t__ id; scalar_t__ running; } ;
struct iwl_mvm_vif {int color; int id; struct iwl_mvm_time_event_data time_event_data; } ;
struct iwl_mvm {int time_event_lock; int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int EBUSY ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int FW_CTXT_ACTION_ADD ;
 int IWL_DEBUG_TE (struct iwl_mvm*,char*) ;
 scalar_t__ TE_CHANNEL_SWITCH_PERIOD ;
 int TE_V2_ABSENCE ;
 int TE_V2_FRAG_NONE ;
 int TE_V2_NOTIF_HOST_EVENT_START ;
 int TE_V2_START_IMMEDIATELY ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int iwl_mvm_remove_time_event (struct iwl_mvm*,struct iwl_mvm_vif*,struct iwl_mvm_time_event_data*) ;
 int iwl_mvm_time_event_send_add (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mvm_time_event_data*,struct iwl_time_event_cmd*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iwl_mvm_schedule_csa_period(struct iwl_mvm *mvm,
    struct ieee80211_vif *vif,
    u32 duration, u32 apply_time)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_time_event_data *te_data = &mvmvif->time_event_data;
 struct iwl_time_event_cmd time_cmd = {};

 lockdep_assert_held(&mvm->mutex);

 if (te_data->running) {
  u32 id;

  spin_lock_bh(&mvm->time_event_lock);
  id = te_data->id;
  spin_unlock_bh(&mvm->time_event_lock);

  if (id == TE_CHANNEL_SWITCH_PERIOD) {
   IWL_DEBUG_TE(mvm, "CS period is already scheduled\n");
   return -EBUSY;
  }






  iwl_mvm_remove_time_event(mvm, mvmvif, te_data);
 }

 time_cmd.action = cpu_to_le32(FW_CTXT_ACTION_ADD);
 time_cmd.id_and_color =
  cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id, mvmvif->color));
 time_cmd.id = cpu_to_le32(TE_CHANNEL_SWITCH_PERIOD);
 time_cmd.apply_time = cpu_to_le32(apply_time);
 time_cmd.max_frags = TE_V2_FRAG_NONE;
 time_cmd.duration = cpu_to_le32(duration);
 time_cmd.repeat = 1;
 time_cmd.interval = cpu_to_le32(1);
 time_cmd.policy = cpu_to_le16(TE_V2_NOTIF_HOST_EVENT_START |
          TE_V2_ABSENCE);
 if (!apply_time)
  time_cmd.policy |= cpu_to_le16(TE_V2_START_IMMEDIATELY);

 return iwl_mvm_time_event_send_add(mvm, vif, te_data, &time_cmd);
}
