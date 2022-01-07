
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int phy_ctxt; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int EINVAL ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int iwl_mvm_binding_update (struct iwl_mvm*,struct ieee80211_vif*,int ,int) ;
 scalar_t__ iwl_mvm_sf_update (struct iwl_mvm*,struct ieee80211_vif*,int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

int iwl_mvm_binding_remove_vif(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 if (WARN_ON_ONCE(!mvmvif->phy_ctxt))
  return -EINVAL;

 ret = iwl_mvm_binding_update(mvm, vif, mvmvif->phy_ctxt, 0);

 if (!ret)
  if (iwl_mvm_sf_update(mvm, vif, 1))
   IWL_ERR(mvm, "Failed to update SF state\n");

 return ret;
}
