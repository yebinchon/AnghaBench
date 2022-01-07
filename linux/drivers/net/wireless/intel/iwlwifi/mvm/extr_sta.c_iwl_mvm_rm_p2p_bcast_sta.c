
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int iwl_mvm_dealloc_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_send_rm_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_rm_p2p_bcast_sta(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 int ret;

 lockdep_assert_held(&mvm->mutex);

 ret = iwl_mvm_send_rm_bcast_sta(mvm, vif);

 iwl_mvm_dealloc_bcast_sta(mvm, vif);

 return ret;
}
