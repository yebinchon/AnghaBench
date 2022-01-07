
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_int_sta {int dummy; } ;
struct iwl_mvm_vif {struct iwl_mvm_int_sta bcast_sta; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int iwl_mvm_alloc_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_dealloc_int_sta (struct iwl_mvm*,struct iwl_mvm_int_sta*) ;
 int iwl_mvm_send_add_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_add_p2p_bcast_sta(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_int_sta *bsta = &mvmvif->bcast_sta;
 int ret;

 lockdep_assert_held(&mvm->mutex);

 ret = iwl_mvm_alloc_bcast_sta(mvm, vif);
 if (ret)
  return ret;

 ret = iwl_mvm_send_add_bcast_sta(mvm, vif);

 if (ret)
  iwl_mvm_dealloc_int_sta(mvm, bsta);

 return ret;
}
