
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {int disable_tx; int lock; } ;
struct iwl_mvm {int hw; } ;
struct ieee80211_sta {int dummy; } ;


 int ieee80211_sta_block_awake (int ,struct ieee80211_sta*,int) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int iwl_mvm_sta_modify_disable_tx (struct iwl_mvm*,struct iwl_mvm_sta*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iwl_mvm_sta_modify_disable_tx_ap(struct iwl_mvm *mvm,
          struct ieee80211_sta *sta,
          bool disable)
{
 struct iwl_mvm_sta *mvm_sta = iwl_mvm_sta_from_mac80211(sta);

 spin_lock_bh(&mvm_sta->lock);

 if (mvm_sta->disable_tx == disable) {
  spin_unlock_bh(&mvm_sta->lock);
  return;
 }

 mvm_sta->disable_tx = disable;


 ieee80211_sta_block_awake(mvm->hw, sta, disable);

 iwl_mvm_sta_modify_disable_tx(mvm, mvm_sta, disable);

 spin_unlock_bh(&mvm_sta->lock);
}
