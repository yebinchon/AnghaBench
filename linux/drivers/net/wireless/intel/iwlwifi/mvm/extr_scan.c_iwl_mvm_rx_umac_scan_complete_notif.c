
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct iwl_umac_scan_complete {scalar_t__ status; scalar_t__ ebs_status; int time_from_last_iter; int last_iter; int last_schedule; int uid; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int* scan_uid_status; int scan_status; int last_ebs_successful; int sched_scan_pass_all; int hw; int scan_timeout_dwork; TYPE_1__* scan_vif; int scan_start; } ;
struct cfg80211_scan_info {int aborted; int tsf_bssid; int scan_start_tsf; } ;
struct TYPE_2__ {int bssid; } ;


 int ETH_ALEN ;
 int IWL_DEBUG_SCAN (struct iwl_mvm*,char*,size_t,int,char*,...) ;
 int IWL_MVM_SCAN_REGULAR ;
 int IWL_MVM_SCAN_SCHED ;
 scalar_t__ IWL_SCAN_EBS_INACTIVE ;
 scalar_t__ IWL_SCAN_EBS_SUCCESS ;
 scalar_t__ IWL_SCAN_OFFLOAD_ABORTED ;
 scalar_t__ IWL_SCAN_OFFLOAD_COMPLETED ;
 int SCHED_SCAN_PASS_ALL_DISABLED ;
 scalar_t__ WARN_ON (int) ;
 int __le32_to_cpu (int ) ;
 int cancel_delayed_work (int *) ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;
 int ieee80211_sched_scan_stopped (int ) ;
 int iwl_mvm_ebs_status_str (scalar_t__) ;
 int iwl_mvm_resume_tcm (struct iwl_mvm*) ;
 int memcpy (int ,int ,int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_rx_umac_scan_complete_notif(struct iwl_mvm *mvm,
      struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_umac_scan_complete *notif = (void *)pkt->data;
 u32 uid = __le32_to_cpu(notif->uid);
 bool aborted = (notif->status == IWL_SCAN_OFFLOAD_ABORTED);

 if (WARN_ON(!(mvm->scan_uid_status[uid] & mvm->scan_status)))
  return;


 if (mvm->scan_uid_status[uid] == IWL_MVM_SCAN_REGULAR) {
  struct cfg80211_scan_info info = {
   .aborted = aborted,
   .scan_start_tsf = mvm->scan_start,
  };

  memcpy(info.tsf_bssid, mvm->scan_vif->bssid, ETH_ALEN);
  ieee80211_scan_completed(mvm->hw, &info);
  mvm->scan_vif = ((void*)0);
  cancel_delayed_work(&mvm->scan_timeout_dwork);
  iwl_mvm_resume_tcm(mvm);
 } else if (mvm->scan_uid_status[uid] == IWL_MVM_SCAN_SCHED) {
  ieee80211_sched_scan_stopped(mvm->hw);
  mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_DISABLED;
 }

 mvm->scan_status &= ~mvm->scan_uid_status[uid];
 IWL_DEBUG_SCAN(mvm,
         "Scan completed, uid %u type %u, status %s, EBS status %s\n",
         uid, mvm->scan_uid_status[uid],
         notif->status == IWL_SCAN_OFFLOAD_COMPLETED ?
    "completed" : "aborted",
         iwl_mvm_ebs_status_str(notif->ebs_status));
 IWL_DEBUG_SCAN(mvm,
         "Last line %d, Last iteration %d, Time from last iteration %d\n",
         notif->last_schedule, notif->last_iter,
         __le32_to_cpu(notif->time_from_last_iter));

 if (notif->ebs_status != IWL_SCAN_EBS_SUCCESS &&
     notif->ebs_status != IWL_SCAN_EBS_INACTIVE)
  mvm->last_ebs_successful = 0;

 mvm->scan_uid_status[uid] = 0;
}
