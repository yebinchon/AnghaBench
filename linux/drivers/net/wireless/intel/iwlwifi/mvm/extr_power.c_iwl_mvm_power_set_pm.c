
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_power_vifs {scalar_t__ ap_active; scalar_t__ p2p_active; scalar_t__ bss_active; scalar_t__ ap_vif; scalar_t__ p2p_vif; scalar_t__ bss_vif; } ;
struct iwl_mvm_vif {int pm_enabled; TYPE_1__* phy_ctxt; } ;
struct iwl_mvm {int hw; int mutex; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,int *) ;
 int iwl_mvm_power_disable_pm_iterator ;
 scalar_t__ iwl_mvm_tdls_sta_count (struct iwl_mvm*,int *) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (scalar_t__) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwl_mvm_power_set_pm(struct iwl_mvm *mvm,
     struct iwl_power_vifs *vifs)
{
 struct iwl_mvm_vif *bss_mvmvif = ((void*)0);
 struct iwl_mvm_vif *p2p_mvmvif = ((void*)0);
 struct iwl_mvm_vif *ap_mvmvif = ((void*)0);
 bool client_same_channel = 0;
 bool ap_same_channel = 0;

 lockdep_assert_held(&mvm->mutex);


 ieee80211_iterate_active_interfaces_atomic(mvm->hw,
     IEEE80211_IFACE_ITER_NORMAL,
     iwl_mvm_power_disable_pm_iterator,
     ((void*)0));

 if (vifs->bss_vif)
  bss_mvmvif = iwl_mvm_vif_from_mac80211(vifs->bss_vif);

 if (vifs->p2p_vif)
  p2p_mvmvif = iwl_mvm_vif_from_mac80211(vifs->p2p_vif);

 if (vifs->ap_vif)
  ap_mvmvif = iwl_mvm_vif_from_mac80211(vifs->ap_vif);


 if (iwl_mvm_tdls_sta_count(mvm, ((void*)0)))
  return;


 if (vifs->bss_active && !vifs->p2p_active && !vifs->ap_active) {
  bss_mvmvif->pm_enabled = 1;
  return;
 }


 if (vifs->p2p_active && !vifs->bss_active && !vifs->ap_active) {
  p2p_mvmvif->pm_enabled = 1;
  return;
 }

 if (vifs->bss_active && vifs->p2p_active)
  client_same_channel = (bss_mvmvif->phy_ctxt->id ==
           p2p_mvmvif->phy_ctxt->id);
 if (vifs->bss_active && vifs->ap_active)
  ap_same_channel = (bss_mvmvif->phy_ctxt->id ==
       ap_mvmvif->phy_ctxt->id);


 if (!(client_same_channel || ap_same_channel)) {
  if (vifs->bss_active)
   bss_mvmvif->pm_enabled = 1;
  if (vifs->p2p_active)
   p2p_mvmvif->pm_enabled = 1;
  return;
 }





 if (client_same_channel && !vifs->ap_active) {

  bss_mvmvif->pm_enabled = 1;
  p2p_mvmvif->pm_enabled = 1;
 }
}
