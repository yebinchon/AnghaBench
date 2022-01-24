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
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_BEACON ; 
 int AR5K_BEACON_RESET_TSF ; 
 int FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ath5k_hw *ah)
{
	u32 val;

	val = FUNC0(ah, AR5K_BEACON) | AR5K_BEACON_RESET_TSF;

	/*
	 * Each write to the RESET_TSF bit toggles a hardware internal
	 * signal to reset TSF, but if left high it will cause a TSF reset
	 * on the next chip reset as well.  Thus we always write the value
	 * twice to clear the signal.
	 */
	FUNC1(ah, val, AR5K_BEACON);
	FUNC1(ah, val, AR5K_BEACON);
}