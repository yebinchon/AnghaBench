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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct ieee80211_channel {scalar_t__ hw_value; int /*<<< orphan*/  center_freq; int /*<<< orphan*/  band; } ;
struct TYPE_2__ {int txp_requested; } ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_mac_srev; scalar_t__ ah_radio; int ah_iq_cal_needed; int /*<<< orphan*/  ah_ant_mode; TYPE_1__ ah_txpower; struct ieee80211_channel* ah_current_channel; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 scalar_t__ AR5K_AR5212 ; 
 scalar_t__ AR5K_MODE_11B ; 
 int /*<<< orphan*/  AR5K_PHY_ACT ; 
 int AR5K_PHY_ACT_DISABLE ; 
 int AR5K_PHY_ACT_ENABLE ; 
 int /*<<< orphan*/  AR5K_PHY_ADC_TEST ; 
 int /*<<< orphan*/  AR5K_PHY_AGCCTL ; 
 int AR5K_PHY_AGCCTL_CAL ; 
 int AR5K_PHY_AGCCTL_NF ; 
 int /*<<< orphan*/  AR5K_PHY_IQ ; 
 int /*<<< orphan*/  AR5K_PHY_IQ_CAL_NUM_LOG_MAX ; 
 int AR5K_PHY_IQ_RUN ; 
 int /*<<< orphan*/  AR5K_PHY_RFBUS_GRANT ; 
 int /*<<< orphan*/  AR5K_PHY_RFBUS_REQ ; 
 int AR5K_PHY_RFBUS_REQ_REQUEST ; 
 int /*<<< orphan*/  AR5K_PHY_TST1 ; 
 int AR5K_PHY_TST1_TXHOLD ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ AR5K_RF5111 ; 
 scalar_t__ AR5K_SREV_AR5424 ; 
 int AR5K_TUNE_MAX_TXPOWER ; 
 int /*<<< orphan*/  AR5K_TXCFG ; 
 int AR5K_TXCFG_B_MODE ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC4 (struct ath5k_hw*,struct ieee80211_channel*) ; 
 int FUNC5 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ath5k_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ath5k_hw*,struct ieee80211_channel*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ath5k_hw*,struct ieee80211_channel*) ; 
 int FUNC12 (struct ath5k_hw*,struct ieee80211_channel*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ath5k_hw*,struct ieee80211_channel*) ; 
 int FUNC14 (struct ath5k_hw*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 

int
FUNC17(struct ath5k_hw *ah, struct ieee80211_channel *channel,
		      u8 mode, bool fast)
{
	struct ieee80211_channel *curr_channel;
	int ret, i;
	u32 phy_tst1;
	ret = 0;

	/*
	 * Sanity check for fast flag
	 * Don't try fast channel change when changing modulation
	 * mode/band. We check for chip compatibility on
	 * ath5k_hw_reset.
	 */
	curr_channel = ah->ah_current_channel;
	if (fast && (channel->hw_value != curr_channel->hw_value))
		return -EINVAL;

	/*
	 * On fast channel change we only set the synth parameters
	 * while PHY is running, enable calibration and skip the rest.
	 */
	if (fast) {
		FUNC1(ah, AR5K_PHY_RFBUS_REQ,
				    AR5K_PHY_RFBUS_REQ_REQUEST);
		for (i = 0; i < 100; i++) {
			if (FUNC5(ah, AR5K_PHY_RFBUS_GRANT))
				break;
			FUNC15(5);
		}
		/* Failed */
		if (i >= 100)
			return -EIO;

		/* Set channel and wait for synth */
		ret = FUNC4(ah, channel);
		if (ret)
			return ret;

		FUNC13(ah, channel);
	}

	/*
	 * Set TX power
	 *
	 * Note: We need to do that before we set
	 * RF buffer settings on 5211/5212+ so that we
	 * properly set curve indices.
	 */
	ret = FUNC12(ah, channel, ah->ah_txpower.txp_requested ?
					ah->ah_txpower.txp_requested * 2 :
					AR5K_TUNE_MAX_TXPOWER);
	if (ret)
		return ret;

	/* Write OFDM timings on 5212*/
	if (ah->ah_version == AR5K_AR5212 &&
		channel->hw_value != AR5K_MODE_11B) {

		ret = FUNC14(ah, channel);
		if (ret)
			return ret;

		/* Spur info is available only from EEPROM versions
		 * greater than 5.3, but the EEPROM routines will use
		 * static values for older versions */
		if (ah->ah_mac_srev >= AR5K_SREV_AR5424)
			FUNC11(ah,
							    channel);
	}

	/* If we used fast channel switching
	 * we are done, release RF bus and
	 * fire up NF calibration.
	 *
	 * Note: Only NF calibration due to
	 * channel change, not AGC calibration
	 * since AGC is still running !
	 */
	if (fast) {
		/*
		 * Release RF Bus grant
		 */
		FUNC0(ah, AR5K_PHY_RFBUS_REQ,
				    AR5K_PHY_RFBUS_REQ_REQUEST);

		/*
		 * Start NF calibration
		 */
		FUNC1(ah, AR5K_PHY_AGCCTL,
					AR5K_PHY_AGCCTL_NF);

		return ret;
	}

	/*
	 * For 5210 we do all initialization using
	 * initvals, so we don't have to modify
	 * any settings (5210 also only supports
	 * a/aturbo modes)
	 */
	if (ah->ah_version != AR5K_AR5210) {

		/*
		 * Write initial RF gain settings
		 * This should work for both 5111/5112
		 */
		ret = FUNC8(ah, channel->band);
		if (ret)
			return ret;

		FUNC16(1000, 1500);

		/*
		 * Write RF buffer
		 */
		ret = FUNC9(ah, channel, mode);
		if (ret)
			return ret;

		/*Enable/disable 802.11b mode on 5111
		(enable 2111 frequency converter + CCK)*/
		if (ah->ah_radio == AR5K_RF5111) {
			if (mode == AR5K_MODE_11B)
				FUNC1(ah, AR5K_TXCFG,
				    AR5K_TXCFG_B_MODE);
			else
				FUNC0(ah, AR5K_TXCFG,
				    AR5K_TXCFG_B_MODE);
		}

	} else if (ah->ah_version == AR5K_AR5210) {
		FUNC16(1000, 1500);
		/* Disable phy and wait */
		FUNC6(ah, AR5K_PHY_ACT_DISABLE, AR5K_PHY_ACT);
		FUNC16(1000, 1500);
	}

	/* Set channel on PHY */
	ret = FUNC4(ah, channel);
	if (ret)
		return ret;

	/*
	 * Enable the PHY and wait until completion
	 * This includes BaseBand and Synthesizer
	 * activation.
	 */
	FUNC6(ah, AR5K_PHY_ACT_ENABLE, AR5K_PHY_ACT);

	FUNC13(ah, channel);

	/*
	 * Perform ADC test to see if baseband is ready
	 * Set tx hold and check adc test register
	 */
	phy_tst1 = FUNC5(ah, AR5K_PHY_TST1);
	FUNC6(ah, AR5K_PHY_TST1_TXHOLD, AR5K_PHY_TST1);
	for (i = 0; i <= 20; i++) {
		if (!(FUNC5(ah, AR5K_PHY_ADC_TEST) & 0x10))
			break;
		FUNC16(200, 250);
	}
	FUNC6(ah, phy_tst1, AR5K_PHY_TST1);

	/*
	 * Start automatic gain control calibration
	 *
	 * During AGC calibration RX path is re-routed to
	 * a power detector so we don't receive anything.
	 *
	 * This method is used to calibrate some static offsets
	 * used together with on-the fly I/Q calibration (the
	 * one performed via ath5k_hw_phy_calibrate), which doesn't
	 * interrupt rx path.
	 *
	 * While rx path is re-routed to the power detector we also
	 * start a noise floor calibration to measure the
	 * card's noise floor (the noise we measure when we are not
	 * transmitting or receiving anything).
	 *
	 * If we are in a noisy environment, AGC calibration may time
	 * out and/or noise floor calibration might timeout.
	 */
	FUNC1(ah, AR5K_PHY_AGCCTL,
				AR5K_PHY_AGCCTL_CAL | AR5K_PHY_AGCCTL_NF);

	/* At the same time start I/Q calibration for QAM constellation
	 * -no need for CCK- */
	ah->ah_iq_cal_needed = false;
	if (!(mode == AR5K_MODE_11B)) {
		ah->ah_iq_cal_needed = true;
		FUNC2(ah, AR5K_PHY_IQ,
				AR5K_PHY_IQ_CAL_NUM_LOG_MAX, 15);
		FUNC1(ah, AR5K_PHY_IQ,
				AR5K_PHY_IQ_RUN);
	}

	/* Wait for gain calibration to finish (we check for I/Q calibration
	 * during ath5k_phy_calibrate) */
	if (FUNC7(ah, AR5K_PHY_AGCCTL,
			AR5K_PHY_AGCCTL_CAL, 0, false)) {
		FUNC3(ah, "gain calibration timeout (%uMHz)\n",
			channel->center_freq);
	}

	/* Restore antenna mode */
	FUNC10(ah, ah->ah_ant_mode);

	return ret;
}