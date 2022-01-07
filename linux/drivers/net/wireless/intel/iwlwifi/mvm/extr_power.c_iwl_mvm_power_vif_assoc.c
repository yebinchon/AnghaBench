
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {int uapsd_misbehaving_bssid; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {int bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;


 int ETH_ALEN ;
 int eth_zero_addr (int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 scalar_t__ memcmp (int ,int ,int ) ;

void iwl_mvm_power_vif_assoc(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 if (memcmp(vif->bss_conf.bssid, mvmvif->uapsd_misbehaving_bssid,
     ETH_ALEN))
  eth_zero_addr(mvmvif->uapsd_misbehaving_bssid);
}
