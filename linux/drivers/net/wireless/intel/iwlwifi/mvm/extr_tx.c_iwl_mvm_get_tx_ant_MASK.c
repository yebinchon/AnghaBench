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
typedef  int u32 ;
struct iwl_mvm_sta {int /*<<< orphan*/  tx_ant; } ;
struct iwl_mvm {int /*<<< orphan*/  mgmt_last_antenna_idx; TYPE_1__* cfg; } ;
struct ieee80211_tx_info {scalar_t__ band; } ;
struct ieee80211_sta {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int non_shared_ant; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 int RATE_MCS_ANT_POS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 struct iwl_mvm_sta* FUNC3 (struct ieee80211_sta*) ; 

__attribute__((used)) static u32 FUNC4(struct iwl_mvm *mvm,
			      struct ieee80211_tx_info *info,
			      struct ieee80211_sta *sta, __le16 fc)
{
	if (info->band == NL80211_BAND_2GHZ &&
	    !FUNC2(mvm))
		return mvm->cfg->non_shared_ant << RATE_MCS_ANT_POS;

	if (sta && FUNC1(fc)) {
		struct iwl_mvm_sta *mvmsta = FUNC3(sta);

		return FUNC0(mvmsta->tx_ant) << RATE_MCS_ANT_POS;
	}

	return FUNC0(mvm->mgmt_last_antenna_idx) << RATE_MCS_ANT_POS;
}