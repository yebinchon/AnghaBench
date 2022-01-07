
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int scan_status; int sched_scan_pass_all; int hw; int scan_timeout_dwork; } ;
struct cfg80211_scan_info {int aborted; } ;


 int IWL_MVM_SCAN_REGULAR ;
 int IWL_MVM_SCAN_STOPPING_SHIFT ;
 int SCHED_SCAN_PASS_ALL_DISABLED ;
 int cancel_delayed_work (int *) ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;
 int ieee80211_sched_scan_stopped (int ) ;
 scalar_t__ iwl_mvm_is_radio_killed (struct iwl_mvm*) ;
 int iwl_mvm_scan_stop_wait (struct iwl_mvm*,int) ;

int iwl_mvm_scan_stop(struct iwl_mvm *mvm, int type, bool notify)
{
 int ret;

 if (!(mvm->scan_status & type))
  return 0;

 if (iwl_mvm_is_radio_killed(mvm)) {
  ret = 0;
  goto out;
 }

 ret = iwl_mvm_scan_stop_wait(mvm, type);
 if (!ret)
  mvm->scan_status |= type << IWL_MVM_SCAN_STOPPING_SHIFT;
out:





 mvm->scan_status &= ~type;

 if (type == IWL_MVM_SCAN_REGULAR) {
  cancel_delayed_work(&mvm->scan_timeout_dwork);
  if (notify) {
   struct cfg80211_scan_info info = {
    .aborted = 1,
   };

   ieee80211_scan_completed(mvm->hw, &info);
  }
 } else if (notify) {
  ieee80211_sched_scan_stopped(mvm->hw);
  mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_DISABLED;
 }

 return ret;
}
