
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int bcast_sta; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int IWL_STA_GENERAL_PURPOSE ;
 int ieee80211_vif_type_p2p (struct ieee80211_vif*) ;
 int iwl_mvm_allocate_int_sta (struct iwl_mvm*,int *,int ,int ,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_alloc_bcast_sta(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 lockdep_assert_held(&mvm->mutex);

 return iwl_mvm_allocate_int_sta(mvm, &mvmvif->bcast_sta, 0,
     ieee80211_vif_type_p2p(vif),
     IWL_STA_GENERAL_PURPOSE);
}
