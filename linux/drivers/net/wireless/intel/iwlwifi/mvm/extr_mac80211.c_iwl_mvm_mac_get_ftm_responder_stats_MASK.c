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
struct iwl_mvm_vif {int /*<<< orphan*/  ap_ibss_active; } ;
struct cfg80211_ftm_responder_stats {int filled; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; struct cfg80211_ftm_responder_stats ftm_resp_stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  ftm_responder; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; scalar_t__ p2p; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 struct iwl_mvm* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  NL80211_FTM_STATS_ASAP_NUM ; 
 int /*<<< orphan*/  NL80211_FTM_STATS_FAILED_NUM ; 
 int /*<<< orphan*/  NL80211_FTM_STATS_NON_ASAP_NUM ; 
 int /*<<< orphan*/  NL80211_FTM_STATS_OUT_OF_WINDOW_TRIGGERS_NUM ; 
 int /*<<< orphan*/  NL80211_FTM_STATS_PARTIAL_NUM ; 
 int /*<<< orphan*/  NL80211_FTM_STATS_RESCHEDULE_REQUESTS_NUM ; 
 int /*<<< orphan*/  NL80211_FTM_STATS_SUCCESS_NUM ; 
 int /*<<< orphan*/  NL80211_FTM_STATS_TOTAL_DURATION_MSEC ; 
 int /*<<< orphan*/  NL80211_FTM_STATS_UNKNOWN_TRIGGERS_NUM ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 struct iwl_mvm_vif* FUNC2 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    struct cfg80211_ftm_responder_stats *stats)
{
	struct iwl_mvm *mvm = FUNC1(hw);
	struct iwl_mvm_vif *mvmvif = FUNC2(vif);

	if (vif->p2p || vif->type != NL80211_IFTYPE_AP ||
	    !mvmvif->ap_ibss_active || !vif->bss_conf.ftm_responder)
		return -EINVAL;

	FUNC3(&mvm->mutex);
	*stats = mvm->ftm_resp_stats;
	FUNC4(&mvm->mutex);

	stats->filled = FUNC0(NL80211_FTM_STATS_SUCCESS_NUM) |
			FUNC0(NL80211_FTM_STATS_PARTIAL_NUM) |
			FUNC0(NL80211_FTM_STATS_FAILED_NUM) |
			FUNC0(NL80211_FTM_STATS_ASAP_NUM) |
			FUNC0(NL80211_FTM_STATS_NON_ASAP_NUM) |
			FUNC0(NL80211_FTM_STATS_TOTAL_DURATION_MSEC) |
			FUNC0(NL80211_FTM_STATS_UNKNOWN_TRIGGERS_NUM) |
			FUNC0(NL80211_FTM_STATS_RESCHEDULE_REQUESTS_NUM) |
			FUNC0(NL80211_FTM_STATS_OUT_OF_WINDOW_TRIGGERS_NUM);

	return 0;
}