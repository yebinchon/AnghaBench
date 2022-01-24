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
typedef  scalar_t__ u32 ;
struct ath5k_hw {scalar_t__ ah_imr; scalar_t__ ah_version; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 scalar_t__ AR5K_INT_GLOBAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  AR5K_TRIG_LVL ; 
 scalar_t__ AR5K_TUNE_MAX_TX_FIFO_THRES ; 
 scalar_t__ AR5K_TUNE_MIN_TX_FIFO_THRES ; 
 int /*<<< orphan*/  AR5K_TXCFG ; 
 int /*<<< orphan*/  AR5K_TXCFG_TXFULL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ath5k_hw*,scalar_t__) ; 

int
FUNC5(struct ath5k_hw *ah, bool increase)
{
	u32 trigger_level, imr;
	int ret = -EIO;

	/*
	 * Disable interrupts by setting the mask
	 */
	imr = FUNC4(ah, ah->ah_imr & ~AR5K_INT_GLOBAL);

	trigger_level = FUNC0(FUNC2(ah, AR5K_TXCFG),
			AR5K_TXCFG_TXFULL);

	if (!increase) {
		if (--trigger_level < AR5K_TUNE_MIN_TX_FIFO_THRES)
			goto done;
	} else
		trigger_level +=
			((AR5K_TUNE_MAX_TX_FIFO_THRES - trigger_level) / 2);

	/*
	 * Update trigger level on success
	 */
	if (ah->ah_version == AR5K_AR5210)
		FUNC3(ah, trigger_level, AR5K_TRIG_LVL);
	else
		FUNC1(ah, AR5K_TXCFG,
				AR5K_TXCFG_TXFULL, trigger_level);

	ret = 0;

done:
	/*
	 * Restore interrupt mask
	 */
	FUNC4(ah, imr);

	return ret;
}