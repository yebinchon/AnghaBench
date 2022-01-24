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
typedef  int /*<<< orphan*/  u32 ;
struct ath9k_hw_mci {scalar_t__ bt_state; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  MCI ; 
 scalar_t__ MCI_BT_AWAKE ; 
 scalar_t__ MCI_BT_CAL ; 
 scalar_t__ MCI_BT_CAL_START ; 
 int /*<<< orphan*/  MCI_GPM ; 
 int /*<<< orphan*/  MCI_GPM_BT_CAL_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCI_GPM_WLAN_CAL_GRANT ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

bool FUNC9(struct ath_hw *ah, struct ath9k_channel *chan)
{
	struct ath_common *common = FUNC7(ah);
	struct ath9k_hw_mci *mci_hw = &ah->btcoex_hw.mci;
	u32 payload[4] = {0, 0, 0, 0};

	FUNC2(ah, FUNC0(chan));

	if (mci_hw->bt_state != MCI_BT_CAL_START)
		return false;

	mci_hw->bt_state = MCI_BT_CAL;

	/*
	 * MCI FIX: disable mci interrupt here. This is to avoid
	 * SW_MSG_DONE or RX_MSG bits to trigger MCI_INT and
	 * lead to mci_intr reentry.
	 */
	FUNC3(ah);

	FUNC1(payload, MCI_GPM_WLAN_CAL_GRANT);
	FUNC5(ah, MCI_GPM, 0, payload,
				16, true, false);

	/* Wait BT calibration to be completed for 25ms */

	if (FUNC6(ah, MCI_GPM_BT_CAL_DONE,
				    0, 25000))
		FUNC8(common, MCI, "MCI BT_CAL_DONE received\n");
	else
		FUNC8(common, MCI,
			"MCI BT_CAL_DONE not received\n");

	mci_hw->bt_state = MCI_BT_AWAKE;
	/* MCI FIX: enable mci interrupt here */
	FUNC4(ah);

	return true;
}