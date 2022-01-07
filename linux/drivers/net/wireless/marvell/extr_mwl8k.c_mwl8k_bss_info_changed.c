
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_bss_conf {int dummy; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int mwl8k_bss_info_changed_ap (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int ) ;
 int mwl8k_bss_info_changed_sta (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int ) ;

__attribute__((used)) static void
mwl8k_bss_info_changed(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
         struct ieee80211_bss_conf *info, u32 changed)
{
 if (vif->type == NL80211_IFTYPE_STATION)
  mwl8k_bss_info_changed_sta(hw, vif, info, changed);
 if (vif->type == NL80211_IFTYPE_AP)
  mwl8k_bss_info_changed_ap(hw, vif, info, changed);
}
