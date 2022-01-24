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
struct TYPE_2__ {int rx_chainmask; int /*<<< orphan*/  tx_chainmask; } ;
struct ath_hw {int enabled_cals; int ah_flags; int rxchainmask; int /*<<< orphan*/  txchainmask; TYPE_1__ caps; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int AH_FASTCC ; 
 int AR9300_MAX_CHAINS ; 
 int /*<<< orphan*/  AR_PHY_ACTIVE ; 
 int /*<<< orphan*/  AR_PHY_ACTIVE_DIS ; 
 int /*<<< orphan*/  AR_PHY_ACTIVE_EN ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_CTL ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_0 ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_1 ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  DELPT ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 scalar_t__ FUNC3 (struct ath9k_channel*) ; 
 int MAXIQCAL ; 
 scalar_t__ FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TX_CL_CAL ; 
 int TX_IQ_ON_AGC_CAL ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*,int,int) ; 
 int FUNC13 (struct ath_hw*) ; 
 int FUNC14 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static bool FUNC16(struct ath_hw *ah,
				   struct ath9k_channel *chan)
{
	bool txiqcal_done = false;
	bool status = true;
	bool run_agc_cal = false, sep_iq_cal = false;
	int i = 0;

	/* Use chip chainmask only for calibration */
	FUNC11(ah, ah->caps.rx_chainmask, ah->caps.tx_chainmask);

	if (ah->enabled_cals & TX_CL_CAL) {
		FUNC6(ah, AR_PHY_CL_CAL_CTL, AR_PHY_CL_CAL_ENABLE);
		run_agc_cal = true;
	}

	if (FUNC2(chan) || FUNC3(chan))
		goto skip_tx_iqcal;

	/* Do Tx IQ Calibration */
	FUNC5(ah, AR_PHY_TX_IQCAL_CONTROL_1,
		      AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT,
		      DELPT);

	/*
	 * For AR9485 or later chips, TxIQ cal runs as part of
	 * AGC calibration. Specifically, AR9550 in SoC chips.
	 */
	if (ah->enabled_cals & TX_IQ_ON_AGC_CAL) {
		if (FUNC4(ah, AR_PHY_TX_IQCAL_CONTROL_0,
				   AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL)) {
				txiqcal_done = true;
		} else {
			txiqcal_done = false;
		}
		run_agc_cal = true;
	} else {
		sep_iq_cal = true;
		run_agc_cal = true;
	}

	/*
	 * In the SoC family, this will run for AR9300, AR9331 and AR9340.
	 */
	if (sep_iq_cal) {
		txiqcal_done = FUNC13(ah);
		FUNC7(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_DIS);
		FUNC15(5);
		FUNC7(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);
	}

	if (FUNC0(ah) && FUNC1(chan)) {
		if (!FUNC8(ah, txiqcal_done))
			return false;
	}

skip_tx_iqcal:
	if (run_agc_cal || !(ah->ah_flags & AH_FASTCC)) {
		for (i = 0; i < AR9300_MAX_CHAINS; i++) {
			if (!(ah->rxchainmask & (1 << i)))
				continue;

			FUNC10(ah, i,
						  FUNC1(chan));
		}

		/*
		 * For non-AR9550 chips, we just trigger AGC calibration
		 * in the HW, poll for completion and then process
		 * the results.
		 *
		 * For AR955x, we run it multiple times and use
		 * median IQ correction.
		 */
		if (!FUNC0(ah)) {
			status = FUNC14(ah);
			if (!status)
				return false;

			if (txiqcal_done)
				FUNC12(ah, 0, false);
		} else {
			if (!txiqcal_done) {
				status = FUNC14(ah);
				if (!status)
					return false;
			} else {
				for (i = 0; i < MAXIQCAL; i++) {
					status = FUNC14(ah);
					if (!status)
						return false;
					FUNC12(ah, i, false);
				}
			}
		}
	}

	/* Revert chainmask to runtime parameters */
	FUNC11(ah, ah->rxchainmask, ah->txchainmask);

	FUNC9(ah);

	return true;
}