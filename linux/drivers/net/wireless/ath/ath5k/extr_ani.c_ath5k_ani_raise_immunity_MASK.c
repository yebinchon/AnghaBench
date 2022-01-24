#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ max_spur_level; } ;
struct ath5k_hw {scalar_t__ opmode; TYPE_2__* ah_current_channel; TYPE_1__ ani_state; int /*<<< orphan*/  ah_beacon_rssi_avg; } ;
struct ath5k_ani_state {scalar_t__ noise_imm_level; scalar_t__ spur_level; scalar_t__ firstep_level; scalar_t__ ofdm_weak_sig; } ;
struct TYPE_4__ {scalar_t__ band; } ;

/* Variables and functions */
 scalar_t__ ATH5K_ANI_MAX_FIRSTEP_LVL ; 
 scalar_t__ ATH5K_ANI_MAX_NOISE_IMM_LVL ; 
 int ATH5K_ANI_RSSI_THR_HIGH ; 
 int ATH5K_ANI_RSSI_THR_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_ANI ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ath5k_hw *ah, struct ath5k_ani_state *as,
			 bool ofdm_trigger)
{
	int rssi = FUNC5(&ah->ah_beacon_rssi_avg);

	FUNC0(ah, ATH5K_DEBUG_ANI, "raise immunity (%s)",
		ofdm_trigger ? "ODFM" : "CCK");

	/* first: raise noise immunity */
	if (as->noise_imm_level < ATH5K_ANI_MAX_NOISE_IMM_LVL) {
		FUNC2(ah, as->noise_imm_level + 1);
		return;
	}

	/* only OFDM: raise spur immunity level */
	if (ofdm_trigger &&
	    as->spur_level < ah->ani_state.max_spur_level) {
		FUNC4(ah, as->spur_level + 1);
		return;
	}

	/* AP mode */
	if (ah->opmode == NL80211_IFTYPE_AP) {
		if (as->firstep_level < ATH5K_ANI_MAX_FIRSTEP_LVL)
			FUNC1(ah, as->firstep_level + 1);
		return;
	}

	/* STA and IBSS mode */

	/* TODO: for IBSS mode it would be better to keep a beacon RSSI average
	 * per each neighbour node and use the minimum of these, to make sure we
	 * don't shut out a remote node by raising immunity too high. */

	if (rssi > ATH5K_ANI_RSSI_THR_HIGH) {
		FUNC0(ah, ATH5K_DEBUG_ANI,
				  "beacon RSSI high");
		/* only OFDM: beacon RSSI is high, we can disable ODFM weak
		 * signal detection */
		if (ofdm_trigger && as->ofdm_weak_sig) {
			FUNC3(ah, false);
			FUNC4(ah, 0);
			return;
		}
		/* as a last resort or CCK: raise firstep level */
		if (as->firstep_level < ATH5K_ANI_MAX_FIRSTEP_LVL) {
			FUNC1(ah, as->firstep_level + 1);
			return;
		}
	} else if (rssi > ATH5K_ANI_RSSI_THR_LOW) {
		/* beacon RSSI in mid range, we need OFDM weak signal detect,
		 * but can raise firstep level */
		FUNC0(ah, ATH5K_DEBUG_ANI,
				  "beacon RSSI mid");
		if (ofdm_trigger && !as->ofdm_weak_sig)
			FUNC3(ah, true);
		if (as->firstep_level < ATH5K_ANI_MAX_FIRSTEP_LVL)
			FUNC1(ah, as->firstep_level + 1);
		return;
	} else if (ah->ah_current_channel->band == NL80211_BAND_2GHZ) {
		/* beacon RSSI is low. in B/G mode turn of OFDM weak signal
		 * detect and zero firstep level to maximize CCK sensitivity */
		FUNC0(ah, ATH5K_DEBUG_ANI,
				  "beacon RSSI low, 2GHz");
		if (ofdm_trigger && as->ofdm_weak_sig)
			FUNC3(ah, false);
		if (as->firstep_level > 0)
			FUNC1(ah, 0);
		return;
	}

	/* TODO: why not?:
	if (as->cck_weak_sig == true) {
		ath5k_ani_set_cck_weak_signal_detection(ah, false);
	}
	*/
}