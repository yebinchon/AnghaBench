
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_periodic_scan_complete {scalar_t__ status; scalar_t__ ebs_status; int time_after_last_iter; int last_schedule_iteration; int last_schedule_line; } ;
struct iwl_mvm {int scan_status; int last_ebs_successful; int scan_timeout_dwork; int hw; int sched_scan_pass_all; int mutex; TYPE_1__* fw; } ;
struct cfg80211_scan_info {int aborted; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int IWL_DEBUG_SCAN (struct iwl_mvm*,char*,char*,int ,...) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_MVM_SCAN_REGULAR ;
 int IWL_MVM_SCAN_SCHED ;
 int IWL_MVM_SCAN_STOPPING_REGULAR ;
 int IWL_MVM_SCAN_STOPPING_SCHED ;
 scalar_t__ IWL_SCAN_EBS_INACTIVE ;
 scalar_t__ IWL_SCAN_EBS_SUCCESS ;
 scalar_t__ IWL_SCAN_OFFLOAD_ABORTED ;
 int IWL_UCODE_TLV_CAPA_UMAC_SCAN ;
 int SCHED_SCAN_PASS_ALL_DISABLED ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __le32_to_cpu (int ) ;
 int cancel_delayed_work (int *) ;
 int fw_has_capa (int *,int ) ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;
 int ieee80211_sched_scan_stopped (int ) ;
 int iwl_mvm_ebs_status_str (scalar_t__) ;
 int iwl_mvm_resume_tcm (struct iwl_mvm*) ;
 int lockdep_assert_held (int *) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_rx_lmac_scan_complete_notif(struct iwl_mvm *mvm,
      struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_periodic_scan_complete *scan_notif = (void *)pkt->data;
 bool aborted = (scan_notif->status == IWL_SCAN_OFFLOAD_ABORTED);




 if (WARN_ON_ONCE(fw_has_capa(&mvm->fw->ucode_capa,
         IWL_UCODE_TLV_CAPA_UMAC_SCAN)))
  return;


 lockdep_assert_held(&mvm->mutex);
 if (mvm->scan_status & IWL_MVM_SCAN_STOPPING_SCHED) {
  WARN_ON_ONCE(mvm->scan_status & IWL_MVM_SCAN_STOPPING_REGULAR);

  IWL_DEBUG_SCAN(mvm, "Scheduled scan %s, EBS status %s\n",
          aborted ? "aborted" : "completed",
          iwl_mvm_ebs_status_str(scan_notif->ebs_status));
  IWL_DEBUG_SCAN(mvm,
          "Last line %d, Last iteration %d, Time after last iteration %d\n",
          scan_notif->last_schedule_line,
          scan_notif->last_schedule_iteration,
          __le32_to_cpu(scan_notif->time_after_last_iter));

  mvm->scan_status &= ~IWL_MVM_SCAN_STOPPING_SCHED;
 } else if (mvm->scan_status & IWL_MVM_SCAN_STOPPING_REGULAR) {
  IWL_DEBUG_SCAN(mvm, "Regular scan %s, EBS status %s\n",
          aborted ? "aborted" : "completed",
          iwl_mvm_ebs_status_str(scan_notif->ebs_status));

  mvm->scan_status &= ~IWL_MVM_SCAN_STOPPING_REGULAR;
 } else if (mvm->scan_status & IWL_MVM_SCAN_SCHED) {
  WARN_ON_ONCE(mvm->scan_status & IWL_MVM_SCAN_REGULAR);

  IWL_DEBUG_SCAN(mvm, "Scheduled scan %s, EBS status %s\n",
          aborted ? "aborted" : "completed",
          iwl_mvm_ebs_status_str(scan_notif->ebs_status));
  IWL_DEBUG_SCAN(mvm,
          "Last line %d, Last iteration %d, Time after last iteration %d (FW)\n",
          scan_notif->last_schedule_line,
          scan_notif->last_schedule_iteration,
          __le32_to_cpu(scan_notif->time_after_last_iter));

  mvm->scan_status &= ~IWL_MVM_SCAN_SCHED;
  ieee80211_sched_scan_stopped(mvm->hw);
  mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_DISABLED;
 } else if (mvm->scan_status & IWL_MVM_SCAN_REGULAR) {
  struct cfg80211_scan_info info = {
   .aborted = aborted,
  };

  IWL_DEBUG_SCAN(mvm, "Regular scan %s, EBS status %s (FW)\n",
          aborted ? "aborted" : "completed",
          iwl_mvm_ebs_status_str(scan_notif->ebs_status));

  mvm->scan_status &= ~IWL_MVM_SCAN_REGULAR;
  ieee80211_scan_completed(mvm->hw, &info);
  cancel_delayed_work(&mvm->scan_timeout_dwork);
  iwl_mvm_resume_tcm(mvm);
 } else {
  IWL_ERR(mvm,
   "got scan complete notification but no scan is running\n");
 }

 mvm->last_ebs_successful =
   scan_notif->ebs_status == IWL_SCAN_EBS_SUCCESS ||
   scan_notif->ebs_status == IWL_SCAN_EBS_INACTIVE;
}
