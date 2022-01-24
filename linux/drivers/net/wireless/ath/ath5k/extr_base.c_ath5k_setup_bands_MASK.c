#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_supported_band {size_t band; int n_bitrates; int n_channels; struct ieee80211_supported_band* channels; TYPE_3__* bitrates; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_hw {TYPE_2__* wiphy; struct ath5k_hw* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  cap_mode; } ;
struct ath5k_hw {scalar_t__ ah_version; struct ieee80211_supported_band* channels; TYPE_3__** rates; struct ieee80211_supported_band* sbands; TYPE_1__ ah_capabilities; } ;
struct TYPE_6__ {int hw_value; int hw_value_short; } ;
struct TYPE_5__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5211 ; 
 int /*<<< orphan*/  AR5K_MODE_11A ; 
 int /*<<< orphan*/  AR5K_MODE_11B ; 
 int /*<<< orphan*/  AR5K_MODE_11G ; 
 int FUNC0 (struct ieee80211_supported_band*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int NUM_NL80211_BANDS ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*) ; 
 int /*<<< orphan*/ * ath5k_rates ; 
 void* FUNC3 (struct ath5k_hw*,struct ieee80211_supported_band*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,struct ieee80211_supported_band*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ieee80211_hw *hw)
{
	struct ath5k_hw *ah = hw->priv;
	struct ieee80211_supported_band *sband;
	int max_c, count_c = 0;
	int i;

	FUNC1(FUNC0(ah->sbands) < NUM_NL80211_BANDS);
	max_c = FUNC0(ah->channels);

	/* 2GHz band */
	sband = &ah->sbands[NL80211_BAND_2GHZ];
	sband->band = NL80211_BAND_2GHZ;
	sband->bitrates = &ah->rates[NL80211_BAND_2GHZ][0];

	if (FUNC6(AR5K_MODE_11G, ah->ah_capabilities.cap_mode)) {
		/* G mode */
		FUNC5(sband->bitrates, &ath5k_rates[0],
		       sizeof(struct ieee80211_rate) * 12);
		sband->n_bitrates = 12;

		sband->channels = ah->channels;
		sband->n_channels = FUNC3(ah, sband->channels,
					AR5K_MODE_11G, max_c);

		hw->wiphy->bands[NL80211_BAND_2GHZ] = sband;
		count_c = sband->n_channels;
		max_c -= count_c;
	} else if (FUNC6(AR5K_MODE_11B, ah->ah_capabilities.cap_mode)) {
		/* B mode */
		FUNC5(sband->bitrates, &ath5k_rates[0],
		       sizeof(struct ieee80211_rate) * 4);
		sband->n_bitrates = 4;

		/* 5211 only supports B rates and uses 4bit rate codes
		 * (e.g normally we have 0x1B for 1M, but on 5211 we have 0x0B)
		 * fix them up here:
		 */
		if (ah->ah_version == AR5K_AR5211) {
			for (i = 0; i < 4; i++) {
				sband->bitrates[i].hw_value =
					sband->bitrates[i].hw_value & 0xF;
				sband->bitrates[i].hw_value_short =
					sband->bitrates[i].hw_value_short & 0xF;
			}
		}

		sband->channels = ah->channels;
		sband->n_channels = FUNC3(ah, sband->channels,
					AR5K_MODE_11B, max_c);

		hw->wiphy->bands[NL80211_BAND_2GHZ] = sband;
		count_c = sband->n_channels;
		max_c -= count_c;
	}
	FUNC4(ah, sband);

	/* 5GHz band, A mode */
	if (FUNC6(AR5K_MODE_11A, ah->ah_capabilities.cap_mode)) {
		sband = &ah->sbands[NL80211_BAND_5GHZ];
		sband->band = NL80211_BAND_5GHZ;
		sband->bitrates = &ah->rates[NL80211_BAND_5GHZ][0];

		FUNC5(sband->bitrates, &ath5k_rates[4],
		       sizeof(struct ieee80211_rate) * 8);
		sband->n_bitrates = 8;

		sband->channels = &ah->channels[count_c];
		sband->n_channels = FUNC3(ah, sband->channels,
					AR5K_MODE_11A, max_c);

		hw->wiphy->bands[NL80211_BAND_5GHZ] = sband;
	}
	FUNC4(ah, sband);

	FUNC2(ah);

	return 0;
}