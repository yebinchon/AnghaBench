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
typedef  int u8 ;
typedef  int u32 ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int AH_TIME_QUANTUM ; 
 int AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL2 ; 
 int /*<<< orphan*/  AR_BTCOEX_RC ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  AR_MCI_RX_REMOTE_SLEEP ; 
 int /*<<< orphan*/  AR_MCI_RX_STATUS ; 
 int /*<<< orphan*/  AR_OBS_BUS_CTRL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(struct ath_hw *ah)
{
	u32 btcoex_ctrl2, diag_sw;
	int i;
	u8 lna_ctrl, bt_sleep;

	for (i = 0; i < AH_WAIT_TIMEOUT; i++) {
		btcoex_ctrl2 = FUNC3(ah, AR_BTCOEX_CTRL2);
		if (btcoex_ctrl2 != 0xdeadbeef)
			break;
		FUNC6(AH_TIME_QUANTUM);
	}
	FUNC5(ah, AR_BTCOEX_CTRL2, (btcoex_ctrl2 | FUNC0(23)));

	for (i = 0; i < AH_WAIT_TIMEOUT; i++) {
		diag_sw = FUNC3(ah, AR_DIAG_SW);
		if (diag_sw != 0xdeadbeef)
			break;
		FUNC6(AH_TIME_QUANTUM);
	}
	FUNC5(ah, AR_DIAG_SW, (diag_sw | FUNC0(27) | FUNC0(19) | FUNC0(18)));
	lna_ctrl = FUNC3(ah, AR_OBS_BUS_CTRL) & 0x3;
	bt_sleep = FUNC1(FUNC3(ah, AR_MCI_RX_STATUS), AR_MCI_RX_REMOTE_SLEEP);

	FUNC5(ah, AR_BTCOEX_CTRL2, btcoex_ctrl2);
	FUNC5(ah, AR_DIAG_SW, diag_sw);

	if (bt_sleep && (lna_ctrl == 2)) {
		FUNC4(ah, AR_BTCOEX_RC, 0x1);
		FUNC2(ah, AR_BTCOEX_RC, 0x1);
		FUNC6(50);
	}
}