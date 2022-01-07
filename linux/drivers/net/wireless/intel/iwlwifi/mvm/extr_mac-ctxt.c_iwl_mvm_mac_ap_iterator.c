
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm_mac_ap_iterator_data {int beacon_int; scalar_t__ beacon_device_ts; } ;
struct TYPE_2__ {int beacon_int; scalar_t__ sync_device_ts; int assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; scalar_t__ p2p; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;

__attribute__((used)) static void iwl_mvm_mac_ap_iterator(void *_data, u8 *mac,
        struct ieee80211_vif *vif)
{
 struct iwl_mvm_mac_ap_iterator_data *data = _data;

 if (vif->type != NL80211_IFTYPE_STATION || !vif->bss_conf.assoc)
  return;


 if (vif->p2p && data->beacon_device_ts)
  return;

 data->beacon_device_ts = vif->bss_conf.sync_device_ts;
 data->beacon_int = vif->bss_conf.beacon_int;
}
