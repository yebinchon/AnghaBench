
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iwl_mvm_vif {struct iwl_mvm_phy_ctxt* phy_ctxt; } ;
struct iwl_mvm_sta {int vif; } ;
struct iwl_mvm_phy_ctxt {int id; } ;
struct TYPE_2__ {int ttc_status; int bt_activity_grading; } ;
struct iwl_mvm {TYPE_1__ last_bt_notif; } ;
struct ieee80211_sta {int dummy; } ;
typedef enum iwl_bt_coex_lut_type { ____Placeholder_iwl_bt_coex_lut_type } iwl_bt_coex_lut_type ;


 int BIT (int ) ;
 int BT_COEX_INVALID_LUT ;
 int BT_COEX_LOOSE_LUT ;
 scalar_t__ BT_HIGH_TRAFFIC ;
 int LINK_QUAL_AGG_TIME_LIMIT_BT_ACT ;
 int LINK_QUAL_AGG_TIME_LIMIT_DEF ;
 int iwl_get_coex_type (struct iwl_mvm*,int ) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

u16 iwl_mvm_coex_agg_time_limit(struct iwl_mvm *mvm,
    struct ieee80211_sta *sta)
{
 struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(mvmsta->vif);
 struct iwl_mvm_phy_ctxt *phy_ctxt = mvmvif->phy_ctxt;
 enum iwl_bt_coex_lut_type lut_type;

 if (mvm->last_bt_notif.ttc_status & BIT(phy_ctxt->id))
  return LINK_QUAL_AGG_TIME_LIMIT_DEF;

 if (le32_to_cpu(mvm->last_bt_notif.bt_activity_grading) <
     BT_HIGH_TRAFFIC)
  return LINK_QUAL_AGG_TIME_LIMIT_DEF;

 lut_type = iwl_get_coex_type(mvm, mvmsta->vif);

 if (lut_type == BT_COEX_LOOSE_LUT || lut_type == BT_COEX_INVALID_LUT)
  return LINK_QUAL_AGG_TIME_LIMIT_DEF;


 return LINK_QUAL_AGG_TIME_LIMIT_BT_ACT;
}
