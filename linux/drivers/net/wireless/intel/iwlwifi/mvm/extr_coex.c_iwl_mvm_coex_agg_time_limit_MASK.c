#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm_vif {struct iwl_mvm_phy_ctxt* phy_ctxt; } ;
struct iwl_mvm_sta {int /*<<< orphan*/  vif; } ;
struct iwl_mvm_phy_ctxt {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int ttc_status; int /*<<< orphan*/  bt_activity_grading; } ;
struct iwl_mvm {TYPE_1__ last_bt_notif; } ;
struct ieee80211_sta {int dummy; } ;
typedef  enum iwl_bt_coex_lut_type { ____Placeholder_iwl_bt_coex_lut_type } iwl_bt_coex_lut_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BT_COEX_INVALID_LUT ; 
 int BT_COEX_LOOSE_LUT ; 
 scalar_t__ BT_HIGH_TRAFFIC ; 
 int /*<<< orphan*/  LINK_QUAL_AGG_TIME_LIMIT_BT_ACT ; 
 int /*<<< orphan*/  LINK_QUAL_AGG_TIME_LIMIT_DEF ; 
 int FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_sta* FUNC2 (struct ieee80211_sta*) ; 
 struct iwl_mvm_vif* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

u16 FUNC5(struct iwl_mvm *mvm,
				struct ieee80211_sta *sta)
{
	struct iwl_mvm_sta *mvmsta = FUNC2(sta);
	struct iwl_mvm_vif *mvmvif = FUNC3(mvmsta->vif);
	struct iwl_mvm_phy_ctxt *phy_ctxt = mvmvif->phy_ctxt;
	enum iwl_bt_coex_lut_type lut_type;

	if (mvm->last_bt_notif.ttc_status & FUNC0(phy_ctxt->id))
		return LINK_QUAL_AGG_TIME_LIMIT_DEF;

	if (FUNC4(mvm->last_bt_notif.bt_activity_grading) <
	    BT_HIGH_TRAFFIC)
		return LINK_QUAL_AGG_TIME_LIMIT_DEF;

	lut_type = FUNC1(mvm, mvmsta->vif);

	if (lut_type == BT_COEX_LOOSE_LUT || lut_type == BT_COEX_INVALID_LUT)
		return LINK_QUAL_AGG_TIME_LIMIT_DEF;

	/* tight coex, high bt traffic, reduce AGG time limit */
	return LINK_QUAL_AGG_TIME_LIMIT_BT_ACT;
}