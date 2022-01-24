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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CFG ; 
 int /*<<< orphan*/  AR_OBS_BUS_1 ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int FUNC2 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

bool FUNC5(struct ath_hw *ah)
{
	int count = 50;
	u32 reg, last_val;

	/* Check if chip failed to wake up */
	if (FUNC2(ah, AR_CFG) == 0xdeadbeef)
		return false;

	if (FUNC1(ah))
		return !FUNC3(ah);

	if (FUNC0(ah))
		return true;

	last_val = FUNC2(ah, AR_OBS_BUS_1);
	do {
		reg = FUNC2(ah, AR_OBS_BUS_1);
		if (reg != last_val)
			return true;

		FUNC4(1);
		last_val = reg;
		if ((reg & 0x7E7FFFEF) == 0x00702400)
			continue;

		switch (reg & 0x7E000B00) {
		case 0x1E000000:
		case 0x52000B00:
		case 0x18000B00:
			continue;
		default:
			return true;
		}
	} while (count-- > 0);

	return false;
}