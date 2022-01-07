
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int color; int id; } ;
struct iwl_mvm {int snif_queue; int snif_sta; int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int IWL_MVM_TX_FIFO_BE ;
 int iwl_mvm_add_int_sta_with_queue (struct iwl_mvm*,int ,int ,int *,int *,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_add_snif_sta(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 lockdep_assert_held(&mvm->mutex);

 return iwl_mvm_add_int_sta_with_queue(mvm, mvmvif->id, mvmvif->color,
           &mvm->snif_sta, &mvm->snif_queue,
           IWL_MVM_TX_FIFO_BE);
}
