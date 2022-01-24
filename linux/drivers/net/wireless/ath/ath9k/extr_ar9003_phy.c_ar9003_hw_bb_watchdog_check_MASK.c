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
struct ath_hw {int bb_watchdog_last_status; } ;

/* Variables and functions */
 int AR9300_DFS_FIRPWR ; 
 int /*<<< orphan*/  AR_PHY_RADAR_0 ; 
 int /*<<< orphan*/  AR_PHY_RADAR_0_FIRPWR ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

bool FUNC7(struct ath_hw *ah)
{
	u32 val;

	switch(ah->bb_watchdog_last_status) {
	case 0x04000539:
		val = FUNC3(ah, AR_PHY_RADAR_0);
		val &= (~AR_PHY_RADAR_0_FIRPWR);
		val |= FUNC5(0x7f, AR_PHY_RADAR_0_FIRPWR);
		FUNC4(ah, AR_PHY_RADAR_0, val);
		FUNC6(1);
		val = FUNC3(ah, AR_PHY_RADAR_0);
		val &= ~AR_PHY_RADAR_0_FIRPWR;
		val |= FUNC5(AR9300_DFS_FIRPWR, AR_PHY_RADAR_0_FIRPWR);
		FUNC4(ah, AR_PHY_RADAR_0, val);

		return false;
	case 0x1300000a:
		return false;
	case 0x0400000a:
	case 0x04000b09:
		return true;
	case 0x04000409:
		if (FUNC0(ah) || FUNC1(ah) || FUNC2(ah))
			return false;
		else
			return true;
	default:
		/*
		 * For any other unknown signatures, do a
		 * full chip reset.
		 */
		return true;
	}
}