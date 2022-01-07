
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int mutex; } ;
struct TYPE_2__ {int idle; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_scan_ies {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_sched_scan_request {int dummy; } ;


 int EBUSY ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MVM_SCAN_SCHED ;
 int iwl_mvm_sched_scan_start (struct iwl_mvm*,struct ieee80211_vif*,struct cfg80211_sched_scan_request*,struct ieee80211_scan_ies*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_mac_sched_scan_start(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct cfg80211_sched_scan_request *req,
     struct ieee80211_scan_ies *ies)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 int ret;

 mutex_lock(&mvm->mutex);

 if (!vif->bss_conf.idle) {
  ret = -EBUSY;
  goto out;
 }

 ret = iwl_mvm_sched_scan_start(mvm, vif, req, ies, IWL_MVM_SCAN_SCHED);

out:
 mutex_unlock(&mvm->mutex);
 return ret;
}
