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
struct ath_hw {int paprd_target_power; struct ath9k_channel* curchan; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_POWERTX_RATE5 ; 
 int /*<<< orphan*/  AR_PHY_POWERTX_RATE5_POWERTXHT20_0 ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 unsigned int FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int) ; 
 unsigned int FUNC7 (struct ath_hw*,struct ath9k_channel*) ; 

__attribute__((used)) static int FUNC8(struct ath_hw *ah)
{
	struct ath9k_channel *chan = ah->curchan;
	unsigned int power, scale, delta;

	scale = FUNC7(ah, chan);

	if (FUNC0(ah) || FUNC1(ah) ||
	    FUNC2(ah) || FUNC4(ah)) {
		power = ah->paprd_target_power + 2;
	} else if (FUNC3(ah)) {
		power = 25;
	} else {
		power = FUNC5(ah, AR_PHY_POWERTX_RATE5,
				       AR_PHY_POWERTX_RATE5_POWERTXHT20_0);

		delta = FUNC6((int) ah->paprd_target_power - (int) power);
		if (delta > scale)
			return -1;

		if (delta < 4)
			power -= 4 - delta;
	}

	return power;
}