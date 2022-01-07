
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm_vif {int ps_disabled; TYPE_1__* phy_ctxt; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ NUM_PHY_CTX ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_power_ps_disabled_iterator(void *_data, u8* mac,
            struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 bool *disable_ps = _data;

 if (mvmvif->phy_ctxt && mvmvif->phy_ctxt->id < NUM_PHY_CTX)
  *disable_ps |= mvmvif->ps_disabled;
}
