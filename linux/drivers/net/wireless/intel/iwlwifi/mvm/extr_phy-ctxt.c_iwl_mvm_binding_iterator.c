
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm_vif {TYPE_1__* phy_ctxt; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_2__ {int id; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int __set_bit (int ,unsigned long*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_binding_iterator(void *_data, u8 *mac,
         struct ieee80211_vif *vif)
{
 unsigned long *data = _data;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 if (!mvmvif->phy_ctxt)
  return;

 if (vif->type == NL80211_IFTYPE_STATION ||
     vif->type == NL80211_IFTYPE_AP)
  __set_bit(mvmvif->phy_ctxt->id, data);
}
