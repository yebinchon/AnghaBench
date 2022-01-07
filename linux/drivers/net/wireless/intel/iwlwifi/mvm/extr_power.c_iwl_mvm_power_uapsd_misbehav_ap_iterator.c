
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct iwl_mvm_vif {scalar_t__ ap_sta_id; int uapsd_misbehaving_bssid; } ;
struct TYPE_2__ {int bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;


 int ETH_ALEN ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void iwl_mvm_power_uapsd_misbehav_ap_iterator(void *_data, u8 *mac,
           struct ieee80211_vif *vif)
{
 u8 *ap_sta_id = _data;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);




 if (mvmvif->ap_sta_id == *ap_sta_id)
  memcpy(mvmvif->uapsd_misbehaving_bssid, vif->bss_conf.bssid,
         ETH_ALEN);
}
