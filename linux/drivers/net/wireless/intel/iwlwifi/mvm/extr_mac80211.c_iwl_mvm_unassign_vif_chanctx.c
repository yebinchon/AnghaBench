
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_chanctx_conf {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int __iwl_mvm_unassign_vif_chanctx (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_chanctx_conf*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_unassign_vif_chanctx(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      struct ieee80211_chanctx_conf *ctx)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 mutex_lock(&mvm->mutex);
 __iwl_mvm_unassign_vif_chanctx(mvm, vif, ctx, 0);
 mutex_unlock(&mvm->mutex);
}
