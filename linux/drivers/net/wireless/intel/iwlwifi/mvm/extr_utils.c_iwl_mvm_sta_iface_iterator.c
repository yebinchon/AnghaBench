
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_sta_iter_data {int assoc; } ;
struct TYPE_2__ {scalar_t__ assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;

__attribute__((used)) static void iwl_mvm_sta_iface_iterator(void *_data, u8 *mac,
           struct ieee80211_vif *vif)
{
 struct iwl_sta_iter_data *data = _data;

 if (vif->type != NL80211_IFTYPE_STATION)
  return;

 if (vif->bss_conf.assoc)
  data->assoc = 1;
}
