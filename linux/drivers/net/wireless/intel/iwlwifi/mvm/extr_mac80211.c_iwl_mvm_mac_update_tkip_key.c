
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {scalar_t__ hw_key_idx; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ STA_KEY_IDX_INVALID ;
 int iwl_mvm_update_tkip_key (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_key_conf*,struct ieee80211_sta*,int ,int *) ;

__attribute__((used)) static void iwl_mvm_mac_update_tkip_key(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_key_conf *keyconf,
     struct ieee80211_sta *sta,
     u32 iv32, u16 *phase1key)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 if (keyconf->hw_key_idx == STA_KEY_IDX_INVALID)
  return;

 iwl_mvm_update_tkip_key(mvm, vif, keyconf, sta, iv32, phase1key);
}
