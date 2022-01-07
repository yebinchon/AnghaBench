
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
struct ieee80211_vif_chanctx_switch {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ieee80211_chanctx_switch_mode { ____Placeholder_ieee80211_chanctx_switch_mode } ieee80211_chanctx_switch_mode ;




 int EOPNOTSUPP ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int iwl_mvm_switch_vif_chanctx_reassign (struct iwl_mvm*,struct ieee80211_vif_chanctx_switch*) ;
 int iwl_mvm_switch_vif_chanctx_swap (struct iwl_mvm*,struct ieee80211_vif_chanctx_switch*) ;

__attribute__((used)) static int iwl_mvm_switch_vif_chanctx(struct ieee80211_hw *hw,
          struct ieee80211_vif_chanctx_switch *vifs,
          int n_vifs,
          enum ieee80211_chanctx_switch_mode mode)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 int ret;


 if (n_vifs > 1)
  return -EOPNOTSUPP;

 switch (mode) {
 case 128:
  ret = iwl_mvm_switch_vif_chanctx_swap(mvm, vifs);
  break;
 case 129:
  ret = iwl_mvm_switch_vif_chanctx_reassign(mvm, vifs);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }

 return ret;
}
