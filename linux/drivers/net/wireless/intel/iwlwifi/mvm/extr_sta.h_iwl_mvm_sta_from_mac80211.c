
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void iwl_mvm_sta ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;



__attribute__((used)) static inline struct iwl_mvm_sta *
iwl_mvm_sta_from_mac80211(struct ieee80211_sta *sta)
{
 return (void *)sta->drv_priv;
}
