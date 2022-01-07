
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_time_event_notif {int unique_id; int action; int status; } ;
struct iwl_mvm_time_event_data {int end_jiffies; int running; scalar_t__ id; TYPE_1__* vif; int duration; } ;
struct iwl_mvm {int hw; int status; int time_event_lock; } ;
struct TYPE_2__ {int type; } ;


 int IWL_DEBUG_TE (struct iwl_mvm*,char*,...) ;
 int IWL_MVM_STATUS_NEED_FLUSH_P2P ;
 int IWL_MVM_STATUS_ROC_RUNNING ;
 int IWL_WARN (struct iwl_mvm*,char*) ;


 scalar_t__ TE_CHANNEL_SWITCH_PERIOD ;
 int TE_V2_NOTIF_HOST_EVENT_END ;
 int TE_V2_NOTIF_HOST_EVENT_START ;
 int TU_TO_EXP_TIME (int ) ;
 int cpu_to_le32 (int) ;
 int ieee80211_ready_on_channel (int ) ;
 int ieee80211_remain_on_channel_expired (int ) ;
 int iwl_mvm_roc_finished (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_te_check_disconnect (struct iwl_mvm*,TYPE_1__*,char const*) ;
 int iwl_mvm_te_check_trigger (struct iwl_mvm*,struct iwl_time_event_notif*,struct iwl_mvm_time_event_data*) ;
 int iwl_mvm_te_clear_data (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ;
 int iwl_mvm_te_handle_notify_csa (struct iwl_mvm*,struct iwl_mvm_time_event_data*,struct iwl_time_event_notif*) ;
 int jiffies ;
 int le32_to_cpu (int) ;
 int lockdep_assert_held (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void iwl_mvm_te_handle_notif(struct iwl_mvm *mvm,
        struct iwl_mvm_time_event_data *te_data,
        struct iwl_time_event_notif *notif)
{
 lockdep_assert_held(&mvm->time_event_lock);

 IWL_DEBUG_TE(mvm, "Handle time event notif - UID = 0x%x action %d\n",
       le32_to_cpu(notif->unique_id),
       le32_to_cpu(notif->action));

 iwl_mvm_te_check_trigger(mvm, notif, te_data);
 if (!le32_to_cpu(notif->status)) {
  const char *msg;

  if (notif->action & cpu_to_le32(TE_V2_NOTIF_HOST_EVENT_START))
   msg = "Time Event start notification failure";
  else
   msg = "Time Event end notification failure";

  IWL_DEBUG_TE(mvm, "%s\n", msg);

  if (iwl_mvm_te_check_disconnect(mvm, te_data->vif, msg)) {
   iwl_mvm_te_clear_data(mvm, te_data);
   return;
  }
 }

 if (le32_to_cpu(notif->action) & TE_V2_NOTIF_HOST_EVENT_END) {
  IWL_DEBUG_TE(mvm,
        "TE ended - current time %lu, estimated end %lu\n",
        jiffies, te_data->end_jiffies);

  switch (te_data->vif->type) {
  case 129:
   ieee80211_remain_on_channel_expired(mvm->hw);
   set_bit(IWL_MVM_STATUS_NEED_FLUSH_P2P, &mvm->status);
   iwl_mvm_roc_finished(mvm);
   break;
  case 128:




   iwl_mvm_te_check_disconnect(mvm, te_data->vif,
    "No beacon heard and the time event is over already...");
   break;
  default:
   break;
  }

  iwl_mvm_te_clear_data(mvm, te_data);
 } else if (le32_to_cpu(notif->action) & TE_V2_NOTIF_HOST_EVENT_START) {
  te_data->running = 1;
  te_data->end_jiffies = TU_TO_EXP_TIME(te_data->duration);

  if (te_data->vif->type == 129) {
   set_bit(IWL_MVM_STATUS_ROC_RUNNING, &mvm->status);
   ieee80211_ready_on_channel(mvm->hw);
  } else if (te_data->id == TE_CHANNEL_SWITCH_PERIOD) {
   iwl_mvm_te_handle_notify_csa(mvm, te_data, notif);
  }
 } else {
  IWL_WARN(mvm, "Got TE with unknown action\n");
 }
}
