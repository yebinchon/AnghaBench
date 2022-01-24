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
struct ath_hw {int /*<<< orphan*/  curchan; struct ath9k_hw_cal_data* caldata; } ;
struct ath9k_hw_cal_data {int /*<<< orphan*/  cal_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int AR_PHY_AGC_CONTROL_NF ; 
 int /*<<< orphan*/  NFCAL_INTF ; 
 int /*<<< orphan*/  NFCAL_PENDING ; 
 int FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct ath_hw *ah)
{
	struct ath9k_hw_cal_data *caldata = ah->caldata;

	if (FUNC5(!caldata))
		return;

	/*
	 * If beacons are stuck, the most likely cause is interference.
	 * Triggering a noise floor calibration at this point helps the
	 * hardware adapt to a noisy environment much faster.
	 * To ensure that we recover from stuck beacons quickly, let
	 * the baseband update the internal NF value itself, similar to
	 * what is being done after a full reset.
	 */
	if (!FUNC4(NFCAL_PENDING, &caldata->cal_flags))
		FUNC2(ah, true);
	else if (!(FUNC0(ah, AR_PHY_AGC_CONTROL) & AR_PHY_AGC_CONTROL_NF))
		FUNC1(ah, ah->curchan);

	FUNC3(NFCAL_INTF, &caldata->cal_flags);
}