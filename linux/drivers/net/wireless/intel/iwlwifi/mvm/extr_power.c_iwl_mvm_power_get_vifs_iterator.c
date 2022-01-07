
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_power_vifs {int ap_active; int monitor_active; int p2p_active; int bss_active; struct ieee80211_vif* bss_vif; struct ieee80211_vif* p2p_vif; struct ieee80211_vif* monitor_vif; struct ieee80211_vif* ap_vif; } ;
struct iwl_mvm_vif {TYPE_1__* phy_ctxt; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; } ;
 scalar_t__ NUM_PHY_CTX ;
 int WARN_ON (struct ieee80211_vif*) ;
 int ieee80211_vif_type_p2p (struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_power_get_vifs_iterator(void *_data, u8 *mac,
         struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_power_vifs *power_iterator = _data;
 bool active = mvmvif->phy_ctxt && mvmvif->phy_ctxt->id < NUM_PHY_CTX;

 switch (ieee80211_vif_type_p2p(vif)) {
 case 130:
  break;

 case 129:
 case 133:

  WARN_ON(power_iterator->ap_vif);
  power_iterator->ap_vif = vif;
  if (active)
   power_iterator->ap_active = 1;
  break;

 case 132:

  WARN_ON(power_iterator->monitor_vif);
  power_iterator->monitor_vif = vif;
  if (active)
   power_iterator->monitor_active = 1;
  break;

 case 131:

  WARN_ON(power_iterator->p2p_vif);
  power_iterator->p2p_vif = vif;
  if (active)
   power_iterator->p2p_active = 1;
  break;

 case 128:
  power_iterator->bss_vif = vif;
  if (active)
   power_iterator->bss_active = 1;
  break;

 default:
  break;
 }
}
