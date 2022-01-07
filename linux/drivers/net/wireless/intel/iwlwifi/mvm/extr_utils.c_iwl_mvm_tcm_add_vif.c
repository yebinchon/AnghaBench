
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int uapsd_nonagg_detected_wk; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int iwl_mvm_tcm_uapsd_nonagg_detected_wk ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

void iwl_mvm_tcm_add_vif(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 INIT_DELAYED_WORK(&mvmvif->uapsd_nonagg_detected_wk,
     iwl_mvm_tcm_uapsd_nonagg_detected_wk);
}
