
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int max_scans; int scan_status; void* sched_scan_pass_all; int hw; int fw_restart; scalar_t__* scan_uid_status; TYPE_1__* fw; } ;
struct cfg80211_scan_info {int aborted; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int IWL_MVM_SCAN_REGULAR ;
 int IWL_MVM_SCAN_SCHED ;
 int IWL_UCODE_TLV_CAPA_UMAC_SCAN ;
 void* SCHED_SCAN_PASS_ALL_DISABLED ;
 scalar_t__ WARN_ONCE (scalar_t__,char*,int) ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;
 int ieee80211_sched_scan_stopped (int ) ;
 int iwl_mvm_scan_uid_by_status (struct iwl_mvm*,int) ;

void iwl_mvm_report_scan_aborted(struct iwl_mvm *mvm)
{
 if (fw_has_capa(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_UMAC_SCAN)) {
  int uid, i;

  uid = iwl_mvm_scan_uid_by_status(mvm, IWL_MVM_SCAN_REGULAR);
  if (uid >= 0) {
   struct cfg80211_scan_info info = {
    .aborted = 1,
   };

   ieee80211_scan_completed(mvm->hw, &info);
   mvm->scan_uid_status[uid] = 0;
  }
  uid = iwl_mvm_scan_uid_by_status(mvm, IWL_MVM_SCAN_SCHED);
  if (uid >= 0 && !mvm->fw_restart) {
   ieee80211_sched_scan_stopped(mvm->hw);
   mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_DISABLED;
   mvm->scan_uid_status[uid] = 0;
  }





  for (i = 0; i < mvm->max_scans; i++) {
   if (WARN_ONCE(mvm->scan_uid_status[i],
          "UMAC scan UID %d status was not cleaned\n",
          i))
    mvm->scan_uid_status[i] = 0;
  }
 } else {
  if (mvm->scan_status & IWL_MVM_SCAN_REGULAR) {
   struct cfg80211_scan_info info = {
    .aborted = 1,
   };

   ieee80211_scan_completed(mvm->hw, &info);
  }





  if ((mvm->scan_status & IWL_MVM_SCAN_SCHED) &&
      !mvm->fw_restart) {
   ieee80211_sched_scan_stopped(mvm->hw);
   mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_DISABLED;
  }
 }
}
