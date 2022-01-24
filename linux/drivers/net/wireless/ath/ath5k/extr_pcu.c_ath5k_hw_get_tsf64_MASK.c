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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_TSF_L32 ; 
 int /*<<< orphan*/  AR5K_TSF_U32 ; 
 int ATH5K_MAX_TSF_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

u64
FUNC4(struct ath5k_hw *ah)
{
	u32 tsf_lower, tsf_upper1, tsf_upper2;
	int i;
	unsigned long flags;

	/* This code is time critical - we don't want to be interrupted here */
	FUNC3(flags);

	/*
	 * While reading TSF upper and then lower part, the clock is still
	 * counting (or jumping in case of IBSS merge) so we might get
	 * inconsistent values. To avoid this, we read the upper part again
	 * and check it has not been changed. We make the hypothesis that a
	 * maximum of 3 changes can happens in a row (we use 10 as a safe
	 * value).
	 *
	 * Impact on performance is pretty small, since in most cases, only
	 * 3 register reads are needed.
	 */

	tsf_upper1 = FUNC1(ah, AR5K_TSF_U32);
	for (i = 0; i < ATH5K_MAX_TSF_READ; i++) {
		tsf_lower = FUNC1(ah, AR5K_TSF_L32);
		tsf_upper2 = FUNC1(ah, AR5K_TSF_U32);
		if (tsf_upper2 == tsf_upper1)
			break;
		tsf_upper1 = tsf_upper2;
	}

	FUNC2(flags);

	FUNC0(i == ATH5K_MAX_TSF_READ);

	return ((u64)tsf_upper1 << 32) | tsf_lower;
}