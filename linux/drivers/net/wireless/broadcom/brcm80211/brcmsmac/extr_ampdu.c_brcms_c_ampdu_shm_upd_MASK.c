#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct brcms_c_info {int /*<<< orphan*/  hw; } ;
struct ampdu_info {int rx_factor; struct brcms_c_info* wlc; } ;

/* Variables and functions */
 int IEEE80211_HT_AMPDU_PARM_FACTOR ; 
 int IEEE80211_HT_MAX_AMPDU_64K ; 
 int /*<<< orphan*/  MIMO_MAXSYM_DEF ; 
 int /*<<< orphan*/  MIMO_MAXSYM_MAX ; 
 int /*<<< orphan*/  M_MIMO_MAXSYM ; 
 int /*<<< orphan*/  M_WATCHDOG_8TU ; 
 int /*<<< orphan*/  WATCHDOG_8TU_DEF ; 
 int /*<<< orphan*/  WATCHDOG_8TU_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct ampdu_info *ampdu)
{
	struct brcms_c_info *wlc = ampdu->wlc;

	/*
	 * Extend ucode internal watchdog timer to
	 * match larger received frames
	 */
	if ((ampdu->rx_factor & IEEE80211_HT_AMPDU_PARM_FACTOR) ==
	    IEEE80211_HT_MAX_AMPDU_64K) {
		FUNC0(wlc->hw, M_MIMO_MAXSYM, MIMO_MAXSYM_MAX);
		FUNC0(wlc->hw, M_WATCHDOG_8TU, WATCHDOG_8TU_MAX);
	} else {
		FUNC0(wlc->hw, M_MIMO_MAXSYM, MIMO_MAXSYM_DEF);
		FUNC0(wlc->hw, M_WATCHDOG_8TU, WATCHDOG_8TU_DEF);
	}
}