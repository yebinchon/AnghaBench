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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;
struct ath_common {int /*<<< orphan*/  macaddr; } ;
struct ath5k_vif_iter_data {int found_active; int need_set_hw_addr; int n_stas; int /*<<< orphan*/  active_mac; int /*<<< orphan*/  opmode; int /*<<< orphan*/  mask; int /*<<< orphan*/  hw_macaddr; } ;
struct ath5k_hw {int /*<<< orphan*/  filter_flags; int /*<<< orphan*/  bssidmask; int /*<<< orphan*/  opmode; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_RX_FILTER_PROM ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_MODE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 struct ath_common* FUNC1 (struct ath5k_hw*) ; 
 scalar_t__ FUNC2 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath5k_vif_iter_data*,int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct ath5k_vif_iter_data*,int /*<<< orphan*/ ,struct ieee80211_vif*),struct ath5k_vif_iter_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(struct ath5k_hw *ah,
				   struct ieee80211_vif *vif)
{
	struct ath_common *common = FUNC1(ah);
	struct ath5k_vif_iter_data iter_data;
	u32 rfilt;

	/*
	 * Use the hardware MAC address as reference, the hardware uses it
	 * together with the BSSID mask when matching addresses.
	 */
	iter_data.hw_macaddr = common->macaddr;
	FUNC9(iter_data.mask);
	iter_data.found_active = false;
	iter_data.need_set_hw_addr = true;
	iter_data.opmode = NL80211_IFTYPE_UNSPECIFIED;
	iter_data.n_stas = 0;

	if (vif)
		FUNC7(&iter_data, vif->addr, vif);

	/* Get list of all active MAC addresses */
	FUNC10(
		ah->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
		ath5k_vif_iter, &iter_data);
	FUNC11(ah->bssidmask, iter_data.mask, ETH_ALEN);

	ah->opmode = iter_data.opmode;
	if (ah->opmode == NL80211_IFTYPE_UNSPECIFIED)
		/* Nothing active, default to station mode */
		ah->opmode = NL80211_IFTYPE_STATION;

	FUNC5(ah, ah->opmode);
	FUNC0(ah, ATH5K_DEBUG_MODE, "mode setup opmode %d (%s)\n",
		  ah->opmode, FUNC8(ah->opmode));

	if (iter_data.need_set_hw_addr && iter_data.found_active)
		FUNC4(ah, iter_data.active_mac);

	if (FUNC2(ah))
		FUNC3(ah, ah->bssidmask);

	/* Set up RX Filter */
	if (iter_data.n_stas > 1) {
		/* If you have multiple STA interfaces connected to
		 * different APs, ARPs are not received (most of the time?)
		 * Enabling PROMISC appears to fix that problem.
		 */
		ah->filter_flags |= AR5K_RX_FILTER_PROM;
	}

	rfilt = ah->filter_flags;
	FUNC6(ah, rfilt);
	FUNC0(ah, ATH5K_DEBUG_MODE, "RX filter 0x%x\n", rfilt);
}