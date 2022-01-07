
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void iwl_mvm_vif ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;



__attribute__((used)) static inline struct iwl_mvm_vif *
iwl_mvm_vif_from_mac80211(struct ieee80211_vif *vif)
{
 if (!vif)
  return ((void*)0);
 return (void *)vif->drv_priv;
}
