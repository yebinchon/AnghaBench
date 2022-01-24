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
struct ieee80211_hw {int max_rates; char* rate_control_algorithm; scalar_t__ sta_data_size; TYPE_1__* wiphy; int /*<<< orphan*/  queues; int /*<<< orphan*/  extra_tx_headroom; } ;
struct TYPE_2__ {int interface_modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMPDU_AGGREGATION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_CQM_RSSI_LIST ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  N_TX_QUEUES ; 
 int /*<<< orphan*/  REPORTS_TX_ACK_STATUS ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw)
{
	FUNC2(hw, AMPDU_AGGREGATION);
	FUNC2(hw, SIGNAL_DBM);
	FUNC2(hw, REPORTS_TX_ACK_STATUS);

	hw->extra_tx_headroom = FUNC1();
	hw->queues = N_TX_QUEUES;
	hw->max_rates = 2;	/* Primary rate and 1 fallback rate */

	/* channel change time is dependent on chip and band  */
	hw->wiphy->interface_modes = FUNC0(NL80211_IFTYPE_STATION) |
				     FUNC0(NL80211_IFTYPE_AP) |
				     FUNC0(NL80211_IFTYPE_ADHOC);

	/*
	 * deactivate sending probe responses by ucude, because this will
	 * cause problems when WPS is used.
	 *
	 * hw->wiphy->flags |= WIPHY_FLAG_AP_PROBE_RESP_OFFLOAD;
	 */

	FUNC4(hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);

	hw->rate_control_algorithm = "minstrel_ht";

	hw->sta_data_size = 0;
	return FUNC3(hw);
}