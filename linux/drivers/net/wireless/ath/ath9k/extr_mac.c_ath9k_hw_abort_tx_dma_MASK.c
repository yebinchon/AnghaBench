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
struct ath_hw {scalar_t__ curchan; } ;

/* Variables and functions */
 int AR_DIAG_FORCE_CH_IDLE_HIGH ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  AR_D_GBL_IFS_MISC ; 
 int AR_D_GBL_IFS_MISC_IGNORE_BACKOFF ; 
 int AR_NUM_QCU ; 
 int AR_PCU_CLEAR_VMF ; 
 int AR_PCU_FORCE_QUIET_COLL ; 
 int /*<<< orphan*/  AR_PCU_MISC ; 
 int /*<<< orphan*/  AR_Q_TXD ; 
 int /*<<< orphan*/  AR_Q_TXD_M ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(struct ath_hw *ah)
{
	int maxdelay = 1000;
	int i, q;

	if (ah->curchan) {
		if (FUNC0(ah->curchan))
			maxdelay *= 2;
		else if (FUNC1(ah->curchan))
			maxdelay *= 4;
	}

	FUNC4(ah, AR_Q_TXD, AR_Q_TXD_M);

	FUNC3(ah, AR_PCU_MISC, AR_PCU_FORCE_QUIET_COLL | AR_PCU_CLEAR_VMF);
	FUNC3(ah, AR_DIAG_SW, AR_DIAG_FORCE_CH_IDLE_HIGH);
	FUNC3(ah, AR_D_GBL_IFS_MISC, AR_D_GBL_IFS_MISC_IGNORE_BACKOFF);

	for (q = 0; q < AR_NUM_QCU; q++) {
		for (i = 0; i < maxdelay; i++) {
			if (i)
				FUNC6(5);

			if (!FUNC5(ah, q))
				break;
		}
	}

	FUNC2(ah, AR_PCU_MISC, AR_PCU_FORCE_QUIET_COLL | AR_PCU_CLEAR_VMF);
	FUNC2(ah, AR_DIAG_SW, AR_DIAG_FORCE_CH_IDLE_HIGH);
	FUNC2(ah, AR_D_GBL_IFS_MISC, AR_D_GBL_IFS_MISC_IGNORE_BACKOFF);

	FUNC4(ah, AR_Q_TXD, 0);
}