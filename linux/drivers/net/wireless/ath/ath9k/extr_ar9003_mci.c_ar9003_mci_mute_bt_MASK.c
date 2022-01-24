#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath9k_hw_mci {int dummy; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_BTCOEX_WL_WEIGHTS0 ; 
 int /*<<< orphan*/  AR_BTCOEX_WL_WEIGHTS1 ; 
 int /*<<< orphan*/  AR_BTCOEX_WL_WEIGHTS2 ; 
 int /*<<< orphan*/  AR_BTCOEX_WL_WEIGHTS3 ; 
 int /*<<< orphan*/  AR_MCI_MSG_ATTRIBUTES_TABLE ; 
 int /*<<< orphan*/  AR_MCI_TX_CTRL ; 
 int /*<<< orphan*/  AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE ; 
 scalar_t__ FUNC0 (struct ath9k_hw_mci*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ath_hw *ah)
{
	struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

	/* disable all MCI messages */
	FUNC2(ah, AR_MCI_MSG_ATTRIBUTES_TABLE, 0xffff0000);
	FUNC2(ah, AR_BTCOEX_WL_WEIGHTS0, 0xffffffff);
	FUNC2(ah, AR_BTCOEX_WL_WEIGHTS1, 0xffffffff);
	FUNC2(ah, AR_BTCOEX_WL_WEIGHTS2, 0xffffffff);
	FUNC2(ah, AR_BTCOEX_WL_WEIGHTS3, 0xffffffff);
	FUNC1(ah, AR_MCI_TX_CTRL, AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE);

	/* wait pending HW messages to flush out */
	FUNC5(10);

	/*
	 * Send LNA_TAKE and SYS_SLEEPING when
	 * 1. reset not after resuming from full sleep
	 * 2. before reset MCI RX, to quiet BT and avoid MCI RX misalignment
	 */
	if (FUNC0(mci)) {
		FUNC3(ah, true);
		FUNC5(5);
	}

	FUNC4(ah, true);
}