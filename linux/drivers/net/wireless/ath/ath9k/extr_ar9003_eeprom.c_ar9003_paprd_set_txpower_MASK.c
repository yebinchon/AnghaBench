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
typedef  int /*<<< orphan*/  u8 ;
struct ath_hw {int /*<<< orphan*/  paprd_target_power; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int ALL_TARGET_HT20_0_8_16 ; 
 int ALL_TARGET_HT20_7 ; 
 int ALL_TARGET_HT40_0_8_16 ; 
 int ALL_TARGET_HT40_7 ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath9k_channel*) ; 
 scalar_t__ FUNC5 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 

__attribute__((used)) static void FUNC7(struct ath_hw *ah,
				     struct ath9k_channel *chan,
				     u8 *targetPowerValT2)
{
	int i;

	if (!FUNC6(ah))
		return;

	if (FUNC5(chan))
		i = ALL_TARGET_HT40_7;
	else
		i = ALL_TARGET_HT20_7;

	if (FUNC4(chan)) {
		if (!FUNC0(ah) && !FUNC1(ah) &&
		    !FUNC2(ah) && !FUNC3(ah)) {
			if (FUNC5(chan))
				i = ALL_TARGET_HT40_0_8_16;
			else
				i = ALL_TARGET_HT20_0_8_16;
		}
	}

	ah->paprd_target_power = targetPowerValT2[i];
}