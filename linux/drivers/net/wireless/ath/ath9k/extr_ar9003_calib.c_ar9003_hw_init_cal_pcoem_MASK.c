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
typedef  int u32 ;
struct TYPE_2__ {int hw_caps; int /*<<< orphan*/  tx_chainmask; int /*<<< orphan*/  rx_chainmask; } ;
struct ath_hw {int ah_flags; int enabled_cals; int /*<<< orphan*/  txchainmask; int /*<<< orphan*/  rxchainmask; TYPE_1__ caps; struct ath9k_hw_cal_data* caldata; } ;
struct ath_common {int dummy; } ;
struct ath9k_hw_cal_data {int /*<<< orphan*/  cal_flags; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int AH_FASTCC ; 
 int AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_PHY_ACTIVE ; 
 int AR_PHY_ACTIVE_DIS ; 
 int AR_PHY_ACTIVE_EN ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int AR_PHY_AGC_CONTROL_CAL ; 
 int AR_PHY_AGC_CONTROL_FLTR_CAL ; 
 int AR_PHY_AGC_CONTROL_OFFSET_CAL ; 
 int AR_PHY_AGC_CONTROL_PKDET_CAL ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_CTL ; 
 int AR_PHY_CL_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_RX_DELAY ; 
 int AR_PHY_RX_DELAY_DELAY ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_0 ; 
 int AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_1 ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT ; 
 int ATH9K_HW_CAP_RTT ; 
 int /*<<< orphan*/  CALIBRATE ; 
 int /*<<< orphan*/  DELPT ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SW_PKDET_DONE ; 
 int /*<<< orphan*/  TXCLCAL_DONE ; 
 int /*<<< orphan*/  TXIQCAL_DONE ; 
 int TX_CL_CAL ; 
 int TX_IQ_CAL ; 
 int TX_IQ_ON_AGC_CAL ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,struct ath9k_channel*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC21 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC22 (struct ath_hw*,int*) ; 
 struct ath_common* FUNC23 (struct ath_hw*) ; 
 scalar_t__ FUNC24 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC25 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC26 (struct ath_hw*) ; 
 int FUNC27 (struct ath_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC29 (struct ath_common*,char*) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 

__attribute__((used)) static bool FUNC32(struct ath_hw *ah,
				     struct ath9k_channel *chan)
{
	struct ath_common *common = FUNC23(ah);
	struct ath9k_hw_cal_data *caldata = ah->caldata;
	bool txiqcal_done = false;
	bool is_reusable = true, status = true;
	bool run_rtt_cal = false, run_agc_cal;
	bool rtt = !!(ah->caps.hw_caps & ATH9K_HW_CAP_RTT);
	u32 rx_delay = 0;
	u32 agc_ctrl = 0, agc_supp_cals = AR_PHY_AGC_CONTROL_OFFSET_CAL |
					  AR_PHY_AGC_CONTROL_FLTR_CAL   |
					  AR_PHY_AGC_CONTROL_PKDET_CAL;

	/* Use chip chainmask only for calibration */
	FUNC18(ah, ah->caps.rx_chainmask, ah->caps.tx_chainmask);

	if (rtt) {
		if (!FUNC16(ah, chan))
			run_rtt_cal = true;

		if (run_rtt_cal)
			FUNC28(common, CALIBRATE, "RTT calibration to be done\n");
	}

	run_agc_cal = run_rtt_cal;

	if (run_rtt_cal) {
		FUNC13(ah);
		FUNC17(ah, 0x00);
		FUNC11(ah);
	}

	if (rtt) {
		if (!run_rtt_cal) {
			agc_ctrl = FUNC4(ah, AR_PHY_AGC_CONTROL);
			agc_supp_cals &= agc_ctrl;
			agc_ctrl &= ~(AR_PHY_AGC_CONTROL_OFFSET_CAL |
				      AR_PHY_AGC_CONTROL_FLTR_CAL |
				      AR_PHY_AGC_CONTROL_PKDET_CAL);
			FUNC7(ah, AR_PHY_AGC_CONTROL, agc_ctrl);
		} else {
			if (ah->ah_flags & AH_FASTCC)
				run_agc_cal = true;
		}
	}

	if (ah->enabled_cals & TX_CL_CAL) {
		if (caldata && FUNC30(TXCLCAL_DONE, &caldata->cal_flags))
			FUNC3(ah, AR_PHY_CL_CAL_CTL,
				    AR_PHY_CL_CAL_ENABLE);
		else {
			FUNC6(ah, AR_PHY_CL_CAL_CTL,
				    AR_PHY_CL_CAL_ENABLE);
			run_agc_cal = true;
		}
	}

	if ((FUNC1(chan) || FUNC2(chan)) ||
	    !(ah->enabled_cals & TX_IQ_CAL))
		goto skip_tx_iqcal;

	/* Do Tx IQ Calibration */
	FUNC5(ah, AR_PHY_TX_IQCAL_CONTROL_1,
		      AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT,
		      DELPT);

	/*
	 * For AR9485 or later chips, TxIQ cal runs as part of
	 * AGC calibration
	 */
	if (ah->enabled_cals & TX_IQ_ON_AGC_CAL) {
		if (caldata && !FUNC30(TXIQCAL_DONE, &caldata->cal_flags))
			FUNC6(ah, AR_PHY_TX_IQCAL_CONTROL_0,
				    AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL);
		else
			FUNC3(ah, AR_PHY_TX_IQCAL_CONTROL_0,
				    AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL);
		txiqcal_done = run_agc_cal = true;
	}

skip_tx_iqcal:
	if (FUNC24(ah) && FUNC0(chan) && run_agc_cal)
		FUNC22(ah, &is_reusable);

	if (FUNC4(ah, AR_PHY_CL_CAL_CTL) & AR_PHY_CL_CAL_ENABLE) {
		rx_delay = FUNC4(ah, AR_PHY_RX_DELAY);
		/* Disable BB_active */
		FUNC7(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_DIS);
		FUNC31(5);
		FUNC7(ah, AR_PHY_RX_DELAY, AR_PHY_RX_DELAY_DELAY);
		FUNC7(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);
	}

	if (run_agc_cal || !(ah->ah_flags & AH_FASTCC)) {
		/* Calibrate the AGC */
		FUNC7(ah, AR_PHY_AGC_CONTROL,
			  FUNC4(ah, AR_PHY_AGC_CONTROL) |
			  AR_PHY_AGC_CONTROL_CAL);

		/* Poll for offset calibration complete */
		status = FUNC27(ah, AR_PHY_AGC_CONTROL,
				       AR_PHY_AGC_CONTROL_CAL,
				       0, AH_WAIT_TIMEOUT);

		FUNC9(ah, chan, run_rtt_cal);
	}

	if (FUNC4(ah, AR_PHY_CL_CAL_CTL) & AR_PHY_CL_CAL_ENABLE) {
		FUNC7(ah, AR_PHY_RX_DELAY, rx_delay);
		FUNC31(5);
	}

	if (FUNC24(ah) && FUNC0(chan) && run_agc_cal)
		FUNC21(ah);

	if (rtt && !run_rtt_cal) {
		agc_ctrl |= agc_supp_cals;
		FUNC7(ah, AR_PHY_AGC_CONTROL, agc_ctrl);
	}

	if (!status) {
		if (run_rtt_cal)
			FUNC12(ah);

		FUNC28(common, CALIBRATE,
			"offset calibration failed to complete in %d ms; noisy environment?\n",
			AH_WAIT_TIMEOUT / 1000);
		return false;
	}

	if (txiqcal_done)
		FUNC19(ah, 0, is_reusable);
	else if (caldata && FUNC30(TXIQCAL_DONE, &caldata->cal_flags))
		FUNC20(ah);

	FUNC8(ah, is_reusable);

	if (run_rtt_cal && caldata) {
		if (is_reusable) {
			if (!FUNC26(ah)) {
				FUNC29(FUNC23(ah),
					"Could not stop baseband\n");
			} else {
				FUNC14(ah);

				if (FUNC30(SW_PKDET_DONE, &caldata->cal_flags))
					FUNC15(ah);
			}

			FUNC25(ah);
		}

		FUNC12(ah);
	}

	/* Revert chainmask to runtime parameters */
	FUNC18(ah, ah->rxchainmask, ah->txchainmask);

	FUNC10(ah);

	return true;
}