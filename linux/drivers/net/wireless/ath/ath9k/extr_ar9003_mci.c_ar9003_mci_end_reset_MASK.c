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
struct ath9k_hw_mci {scalar_t__ bt_state; int /*<<< orphan*/  ready; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath9k_hw_cal_data {int /*<<< orphan*/  cal_flags; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_MCI_INTERRUPT_RX_MSG_RAW ; 
 int AR_MCI_INTERRUPT_RX_MSG_REMOTE_RESET ; 
 int AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE ; 
 int /*<<< orphan*/  AR_PHY_TIMING4 ; 
 int AR_PHY_TIMING_CONTROL4_DO_GAIN_DC_IQ_CAL_SHIFT ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ MCI_BT_AWAKE ; 
 scalar_t__ MCI_BT_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTT_DONE ; 
 int /*<<< orphan*/  TXCLCAL_DONE ; 
 int /*<<< orphan*/  TXIQCAL_DONE ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int FUNC12(struct ath_hw *ah, struct ath9k_channel *chan,
			 struct ath9k_hw_cal_data *caldata)
{
	struct ath9k_hw_mci *mci_hw = &ah->btcoex_hw.mci;

	if (!mci_hw->ready)
		return 0;

	if (!FUNC0(chan) || (mci_hw->bt_state != MCI_BT_SLEEP))
		goto exit;

	if (!FUNC4(ah, AR_MCI_INTERRUPT_RX_MSG_REMOTE_RESET) &&
	    !FUNC4(ah, AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE))
		goto exit;

	/*
	 * BT is sleeping. Check if BT wakes up during
	 * WLAN calibration. If BT wakes up during
	 * WLAN calibration, need to go through all
	 * message exchanges again and recal.
	 */
	FUNC3(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
		  (AR_MCI_INTERRUPT_RX_MSG_REMOTE_RESET |
		   AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE));

	FUNC6(ah, true);
	FUNC8(ah, true);
	FUNC11(1);

	if (FUNC0(chan))
		FUNC7(ah, true);

	mci_hw->bt_state = MCI_BT_AWAKE;

	FUNC1(ah, AR_PHY_TIMING4,
		    1 << AR_PHY_TIMING_CONTROL4_DO_GAIN_DC_IQ_CAL_SHIFT);

	if (caldata) {
		FUNC10(TXIQCAL_DONE, &caldata->cal_flags);
		FUNC10(TXCLCAL_DONE, &caldata->cal_flags);
		FUNC10(RTT_DONE, &caldata->cal_flags);
	}

	if (!FUNC9(ah, chan))
		return -EIO;

	FUNC2(ah, AR_PHY_TIMING4,
		    1 << AR_PHY_TIMING_CONTROL4_DO_GAIN_DC_IQ_CAL_SHIFT);

exit:
	FUNC5(ah);
	return 0;
}