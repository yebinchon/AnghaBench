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
struct ath_hw {int /*<<< orphan*/  curchan; struct ath9k_cal_list* cal_list_curr; } ;
struct ath9k_channel {int dummy; } ;
struct ath9k_cal_list {scalar_t__ calState; struct ath9k_cal_list* calNext; } ;

/* Variables and functions */
 scalar_t__ CAL_RUNNING ; 
 scalar_t__ CAL_WAITING ; 
 int FUNC0 (struct ath_hw*,struct ath9k_channel*,int /*<<< orphan*/ ,struct ath9k_cal_list*) ; 
 scalar_t__ FUNC1 (struct ath_hw*,struct ath9k_channel*) ; 
 int FUNC2 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,struct ath9k_cal_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int) ; 

__attribute__((used)) static int FUNC5(struct ath_hw *ah, struct ath9k_channel *chan,
			       u8 rxchainmask, bool longcal)
{
	bool iscaldone = true;
	struct ath9k_cal_list *currCal = ah->cal_list_curr;
	int ret;

	/*
	 * For given calibration:
	 * 1. Call generic cal routine
	 * 2. When this cal is done (isCalDone) if we have more cals waiting
	 *    (eg after reset), mask this to upper layers by not propagating
	 *    isCalDone if it is set to TRUE.
	 *    Instead, change isCalDone to FALSE and setup the waiting cal(s)
	 *    to be run.
	 */
	if (currCal &&
	    (currCal->calState == CAL_RUNNING ||
	     currCal->calState == CAL_WAITING)) {
		iscaldone = FUNC0(ah, chan,
						      rxchainmask, currCal);
		if (iscaldone) {
			ah->cal_list_curr = currCal = currCal->calNext;

			if (currCal->calState == CAL_WAITING) {
				iscaldone = false;
				FUNC3(ah, currCal);
			}
		}
	}

	/*
	 * Do NF cal only at longer intervals. Get the value from
	 * the previous NF cal and update history buffer.
	 */
	if (longcal && FUNC1(ah, chan)) {
		/*
		 * Load the NF from history buffer of the current channel.
		 * NF is slow time-variant, so it is OK to use a historical
		 * value.
		 */
		ret = FUNC2(ah, ah->curchan);
		if (ret < 0)
			return ret;

		/* start NF calibration, without updating BB NF register */
		FUNC4(ah, false);
	}

	return iscaldone;
}