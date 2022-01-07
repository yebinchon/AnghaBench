
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_pmsr_request {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int iwl_mvm_ftm_start (struct iwl_mvm*,struct ieee80211_vif*,struct cfg80211_pmsr_request*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_start_pmsr(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct cfg80211_pmsr_request *request)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 int ret;

 mutex_lock(&mvm->mutex);
 ret = iwl_mvm_ftm_start(mvm, vif, request);
 mutex_unlock(&mvm->mutex);

 return ret;
}
