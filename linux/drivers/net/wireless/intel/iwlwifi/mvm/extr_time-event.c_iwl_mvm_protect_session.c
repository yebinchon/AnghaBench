
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iwl_time_event_cmd {int repeat; int policy; void* duration; void* interval; void* max_delay; int max_frags; void* apply_time; void* id; void* id_and_color; void* action; } ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm_time_event_data {scalar_t__ end_jiffies; int uid; scalar_t__ running; } ;
struct iwl_mvm_vif {int color; int id; struct iwl_mvm_time_event_data time_event_data; } ;
struct iwl_mvm {int notif_wait; int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int ARRAY_SIZE (int const*) ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int FW_CTXT_ACTION_ADD ;
 int IWL_DEBUG_TE (struct iwl_mvm*,char*,int ,...) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int TE_BSS_STA_AGGRESSIVE_ASSOC ;
 int TE_V2_FRAG_NONE ;
 int TE_V2_NOTIF_HOST_EVENT_END ;
 int TE_V2_NOTIF_HOST_EVENT_START ;
 int TE_V2_START_IMMEDIATELY ;
 int const TIME_EVENT_NOTIFICATION ;
 int TU_TO_EXP_TIME (int) ;
 int TU_TO_JIFFIES (int) ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int iwl_init_notification_wait (int *,struct iwl_notification_wait*,int const*,int ,int ,struct iwl_mvm_time_event_data*) ;
 int iwl_mvm_stop_session_protection (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_te_notif ;
 scalar_t__ iwl_mvm_time_event_send_add (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mvm_time_event_data*,struct iwl_time_event_cmd*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int iwl_remove_notification (int *,struct iwl_notification_wait*) ;
 scalar_t__ iwl_wait_notification (int *,struct iwl_notification_wait*,int ) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ time_after (scalar_t__,int ) ;

void iwl_mvm_protect_session(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif,
        u32 duration, u32 min_duration,
        u32 max_delay, bool wait_for_notif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_time_event_data *te_data = &mvmvif->time_event_data;
 const u16 te_notif_response[] = { TIME_EVENT_NOTIFICATION };
 struct iwl_notification_wait wait_te_notif;
 struct iwl_time_event_cmd time_cmd = {};

 lockdep_assert_held(&mvm->mutex);

 if (te_data->running &&
     time_after(te_data->end_jiffies, TU_TO_EXP_TIME(min_duration))) {
  IWL_DEBUG_TE(mvm, "We have enough time in the current TE: %u\n",
        jiffies_to_msecs(te_data->end_jiffies - jiffies));
  return;
 }

 if (te_data->running) {
  IWL_DEBUG_TE(mvm, "extend 0x%x: only %u ms left\n",
        te_data->uid,
        jiffies_to_msecs(te_data->end_jiffies - jiffies));
  iwl_mvm_stop_session_protection(mvm, vif);
 }

 time_cmd.action = cpu_to_le32(FW_CTXT_ACTION_ADD);
 time_cmd.id_and_color =
  cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id, mvmvif->color));
 time_cmd.id = cpu_to_le32(TE_BSS_STA_AGGRESSIVE_ASSOC);

 time_cmd.apply_time = cpu_to_le32(0);

 time_cmd.max_frags = TE_V2_FRAG_NONE;
 time_cmd.max_delay = cpu_to_le32(max_delay);

 time_cmd.interval = cpu_to_le32(1);
 time_cmd.duration = cpu_to_le32(duration);
 time_cmd.repeat = 1;
 time_cmd.policy = cpu_to_le16(TE_V2_NOTIF_HOST_EVENT_START |
          TE_V2_NOTIF_HOST_EVENT_END |
          TE_V2_START_IMMEDIATELY);

 if (!wait_for_notif) {
  iwl_mvm_time_event_send_add(mvm, vif, te_data, &time_cmd);
  return;
 }





 iwl_init_notification_wait(&mvm->notif_wait, &wait_te_notif,
       te_notif_response,
       ARRAY_SIZE(te_notif_response),
       iwl_mvm_te_notif, te_data);


 if (iwl_mvm_time_event_send_add(mvm, vif, te_data, &time_cmd)) {
  IWL_ERR(mvm, "Failed to add TE to protect session\n");
  iwl_remove_notification(&mvm->notif_wait, &wait_te_notif);
 } else if (iwl_wait_notification(&mvm->notif_wait, &wait_te_notif,
      TU_TO_JIFFIES(max_delay))) {
  IWL_ERR(mvm, "Failed to protect session until TE\n");
 }
}
