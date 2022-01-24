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
struct ieee80211_channel {unsigned int center_freq; int band; unsigned int hw_value; } ;
struct ath5k_hw {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
#define  AR5K_MODE_11A 130 
#define  AR5K_MODE_11B 129 
#define  AR5K_MODE_11G 128 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,char*) ; 
 int NL80211_BAND_2GHZ ; 
 int NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 unsigned int FUNC3 (unsigned int,int) ; 

__attribute__((used)) static unsigned int
FUNC4(struct ath5k_hw *ah, struct ieee80211_channel *channels,
		unsigned int mode, unsigned int max)
{
	unsigned int count, size, freq, ch;
	enum nl80211_band band;

	switch (mode) {
	case AR5K_MODE_11A:
		/* 1..220, but 2GHz frequencies are filtered by check_channel */
		size = 220;
		band = NL80211_BAND_5GHZ;
		break;
	case AR5K_MODE_11B:
	case AR5K_MODE_11G:
		size = 26;
		band = NL80211_BAND_2GHZ;
		break;
	default:
		FUNC0(ah, "bad mode, not copying channels\n");
		return 0;
	}

	count = 0;
	for (ch = 1; ch <= size && count < max; ch++) {
		freq = FUNC3(ch, band);

		if (freq == 0) /* mapping failed - not a standard channel */
			continue;

		/* Write channel info, needed for ath5k_channel_ok() */
		channels[count].center_freq = freq;
		channels[count].band = band;
		channels[count].hw_value = mode;

		/* Check if channel is supported by the chipset */
		if (!FUNC1(ah, &channels[count]))
			continue;

		if (!FUNC2(ch, band))
			continue;

		count++;
	}

	return count;
}