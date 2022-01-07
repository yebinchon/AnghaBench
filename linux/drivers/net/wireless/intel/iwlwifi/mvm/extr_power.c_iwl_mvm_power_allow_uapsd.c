
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm_vif {int uapsd_misbehaving_bssid; } ;
struct iwl_mvm {int hw; } ;
struct TYPE_3__ {int oppps_ctwindow; } ;
struct TYPE_4__ {TYPE_1__ p2p_noa_attr; int bssid; } ;
struct ieee80211_vif {scalar_t__ p2p; TYPE_2__ bss_conf; } ;


 int ETH_ALEN ;
 int IEEE80211_IFACE_ITER_NORMAL ;
 int IEEE80211_P2P_OPPPS_ENABLE_BIT ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,int*) ;
 int iwl_mvm_is_p2p_scm_uapsd_supported (struct iwl_mvm*) ;
 int iwl_mvm_p2p_standalone_iterator ;
 int iwl_mvm_phy_ctx_count (struct iwl_mvm*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static bool iwl_mvm_power_allow_uapsd(struct iwl_mvm *mvm,
           struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 if (!memcmp(mvmvif->uapsd_misbehaving_bssid, vif->bss_conf.bssid,
      ETH_ALEN))
  return 0;





 if (vif->p2p &&
     (vif->bss_conf.p2p_noa_attr.oppps_ctwindow &
     IEEE80211_P2P_OPPPS_ENABLE_BIT))
  return 0;





 if (iwl_mvm_phy_ctx_count(mvm) >= 2)
  return 0;

 if (vif->p2p) {

  bool is_p2p_standalone = 1;

  if (!iwl_mvm_is_p2p_scm_uapsd_supported(mvm))
   return 0;

  ieee80211_iterate_active_interfaces_atomic(mvm->hw,
     IEEE80211_IFACE_ITER_NORMAL,
     iwl_mvm_p2p_standalone_iterator,
     &is_p2p_standalone);

  if (!is_p2p_standalone)
   return 0;
 }

 return 1;
}
