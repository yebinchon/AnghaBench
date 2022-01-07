
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int rts_threshold; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;

__attribute__((used)) static int iwl_mvm_mac_set_rts_threshold(struct ieee80211_hw *hw, u32 value)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 mvm->rts_threshold = value;

 return 0;
}
