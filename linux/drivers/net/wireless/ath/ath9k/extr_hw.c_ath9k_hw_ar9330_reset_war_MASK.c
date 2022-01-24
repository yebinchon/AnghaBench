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
struct ath_hw {int (* external_reset ) () ;} ;

/* Variables and functions */
 int AR_NUM_QCU ; 
 int /*<<< orphan*/  AR_RTC_RESET ; 
 int ATH9K_RESET_COLD ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int FUNC2 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 () ; 

__attribute__((used)) static bool FUNC6(struct ath_hw *ah, int type)
{
	int i, npend = 0;

	for (i = 0; i < AR_NUM_QCU; i++) {
		npend = FUNC2(ah, i);
		if (npend)
			break;
	}

	if (ah->external_reset &&
	    (npend || type == ATH9K_RESET_COLD)) {
		int reset_err = 0;

		FUNC3(FUNC1(ah), RESET,
			"reset MAC via external reset\n");

		reset_err = ah->external_reset();
		if (reset_err) {
			FUNC4(FUNC1(ah),
				"External reset failed, err=%d\n",
				reset_err);
			return false;
		}

		FUNC0(ah, AR_RTC_RESET, 1);
	}

	return true;
}