
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm_vif {TYPE_1__* phy_ctxt; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 scalar_t__ NUM_PHY_CTX ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_scan_condition_iterator(void *data, u8 *mac,
         struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int *global_cnt = data;

 if (vif->type != NL80211_IFTYPE_P2P_DEVICE && mvmvif->phy_ctxt &&
     mvmvif->phy_ctxt->id < NUM_PHY_CTX)
  *global_cnt += 1;
}
