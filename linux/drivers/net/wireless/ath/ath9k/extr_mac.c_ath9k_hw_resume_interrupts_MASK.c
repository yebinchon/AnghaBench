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
struct ath_hw {int imask; int /*<<< orphan*/  intr_ref_cnt; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int ATH9K_INT_GLOBAL ; 
 int /*<<< orphan*/  INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ath_hw *ah)
{
	struct ath_common *common = FUNC1(ah);

	if (!(ah->imask & ATH9K_INT_GLOBAL))
		return;

	if (FUNC3(&ah->intr_ref_cnt) != 0) {
		FUNC2(common, INTERRUPT, "Do not enable IER ref count %d\n",
			FUNC3(&ah->intr_ref_cnt));
		return;
	}

	FUNC0(ah);
}