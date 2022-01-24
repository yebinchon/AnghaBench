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
struct TYPE_2__ {scalar_t__ bw; scalar_t__ index; } ;
struct iwl_scale_tbl_info {TYPE_1__ rate; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
typedef  enum rs_action { ____Placeholder_rs_action } rs_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 scalar_t__ IWL_RATE_MCS_0_INDEX ; 
 scalar_t__ IWL_RATE_MCS_1_INDEX ; 
 scalar_t__ IWL_RATE_MCS_4_INDEX ; 
 scalar_t__ IWL_RATE_MCS_5_INDEX ; 
 scalar_t__ RATE_MCS_CHAN_WIDTH_20 ; 
 scalar_t__ RATE_MCS_CHAN_WIDTH_80 ; 
 int RS_ACTION_DOWNSCALE ; 
 int RS_ACTION_STAY ; 
 int RS_ACTION_UPSCALE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct iwl_scale_tbl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_lq_sta*,struct iwl_scale_tbl_info*) ; 

__attribute__((used)) static bool FUNC5(struct iwl_mvm *mvm,
			      struct ieee80211_sta *sta,
			      struct iwl_lq_sta *lq_sta,
			      struct iwl_scale_tbl_info *tbl,
			      enum rs_action scale_action)
{
	if (FUNC2(sta) != RATE_MCS_CHAN_WIDTH_80)
		return false;

	if (!FUNC1(&tbl->rate))
		return false;

	if ((tbl->rate.bw == RATE_MCS_CHAN_WIDTH_80) &&
	    (tbl->rate.index == IWL_RATE_MCS_0_INDEX) &&
	    (scale_action == RS_ACTION_DOWNSCALE)) {
		tbl->rate.bw = RATE_MCS_CHAN_WIDTH_20;
		tbl->rate.index = IWL_RATE_MCS_4_INDEX;
		FUNC0(mvm, "Switch 80Mhz SISO MCS0 -> 20Mhz MCS4\n");
		goto tweaked;
	}

	/* Go back to 80Mhz MCS1 only if we've established that 20Mhz MCS5 is
	 * sustainable, i.e. we're past the test window. We can't go back
	 * if MCS5 is just tested as this will happen always after switching
	 * to 20Mhz MCS4 because the rate stats are cleared.
	 */
	if ((tbl->rate.bw == RATE_MCS_CHAN_WIDTH_20) &&
	    (((tbl->rate.index == IWL_RATE_MCS_5_INDEX) &&
	     (scale_action == RS_ACTION_STAY)) ||
	     ((tbl->rate.index > IWL_RATE_MCS_5_INDEX) &&
	      (scale_action == RS_ACTION_UPSCALE)))) {
		tbl->rate.bw = RATE_MCS_CHAN_WIDTH_80;
		tbl->rate.index = IWL_RATE_MCS_1_INDEX;
		FUNC0(mvm, "Switch 20Mhz SISO MCS5 -> 80Mhz MCS1\n");
		goto tweaked;
	}

	return false;

tweaked:
	FUNC4(lq_sta, tbl);
	FUNC3(mvm, tbl);
	return true;
}