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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct ath5k_hw {scalar_t__ ah_version; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AR5K_PHY_SHIFT_2GHZ ; 
 int AR5K_PHY_SHIFT_5GHZ ; 
#define  NL80211_BAND_2GHZ 129 
#define  NL80211_BAND_5GHZ 128 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

u16
FUNC5(struct ath5k_hw *ah, enum nl80211_band band)
{
	unsigned int i;
	u32 srev;
	u16 ret;

	/*
	 * Set the radio chip access register
	 */
	switch (band) {
	case NL80211_BAND_2GHZ:
		FUNC3(ah, AR5K_PHY_SHIFT_2GHZ, FUNC0(0));
		break;
	case NL80211_BAND_5GHZ:
		FUNC3(ah, AR5K_PHY_SHIFT_5GHZ, FUNC0(0));
		break;
	default:
		return 0;
	}

	FUNC4(2000, 2500);

	/* ...wait until PHY is ready and read the selected radio revision */
	FUNC3(ah, 0x00001c16, FUNC0(0x34));

	for (i = 0; i < 8; i++)
		FUNC3(ah, 0x00010000, FUNC0(0x20));

	if (ah->ah_version == AR5K_AR5210) {
		srev = (FUNC2(ah, FUNC0(256)) >> 28) & 0xf;
		ret = (u16)FUNC1(srev, 4) + 1;
	} else {
		srev = (FUNC2(ah, FUNC0(0x100)) >> 24) & 0xff;
		ret = (u16)FUNC1(((srev & 0xf0) >> 4) |
				((srev & 0x0f) << 4), 8);
	}

	/* Reset to the 5GHz mode */
	FUNC3(ah, AR5K_PHY_SHIFT_5GHZ, FUNC0(0));

	return ret;
}