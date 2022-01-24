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
typedef  int u32 ;
struct ath_hw {int modes_index; int /*<<< orphan*/  txchainmask; int /*<<< orphan*/  rxchainmask; int /*<<< orphan*/  iniCckfirJapan2484; int /*<<< orphan*/  iniAdditional; int /*<<< orphan*/  iniModesFastClock; int /*<<< orphan*/  iniModesTxGain; int /*<<< orphan*/  ini_modes_rxgain_xlna; int /*<<< orphan*/  ini_modes_rx_gain_bounds; int /*<<< orphan*/  ini_modes_rxgain_bb_postamble; int /*<<< orphan*/  ini_modes_rxgain_bb_core; int /*<<< orphan*/  iniModesRxGain; int /*<<< orphan*/  ini_radio_post_sys2ant; int /*<<< orphan*/ * iniRadio; int /*<<< orphan*/ * iniBB; int /*<<< orphan*/ * iniMac; int /*<<< orphan*/ * iniSOC; } ;
struct ath9k_channel {int channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_FCAL_2_0 ; 
 int /*<<< orphan*/  AR_PHY_FLC_PWR_THRESH ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 unsigned int ATH_INI_NUM_SPLIT ; 
 unsigned int ATH_INI_POST ; 
 int EINVAL ; 
 scalar_t__ FUNC4 (struct ath9k_channel*) ; 
 scalar_t__ FUNC5 (struct ath_hw*,struct ath9k_channel*) ; 
 scalar_t__ FUNC6 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*) ; 
 int FUNC10 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*,struct ath9k_channel*) ; 
 int FUNC15 (struct ath_hw*,struct ath9k_channel*) ; 
 int FUNC16 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_hw*,struct ath9k_channel*,int) ; 

__attribute__((used)) static int FUNC18(struct ath_hw *ah,
				 struct ath9k_channel *chan)
{
	unsigned int regWrites = 0, i;
	u32 modesIndex;

	if (FUNC4(chan))
		modesIndex = FUNC6(chan) ? 2 : 1;
	else
		modesIndex = FUNC6(chan) ? 3 : 4;

	/*
	 * SOC, MAC, BB, RADIO initvals.
	 */
	for (i = 0; i < ATH_INI_NUM_SPLIT; i++) {
		FUNC12(ah, &ah->iniSOC[i], modesIndex);
		FUNC12(ah, &ah->iniMac[i], modesIndex);
		FUNC12(ah, &ah->iniBB[i], modesIndex);
		FUNC12(ah, &ah->iniRadio[i], modesIndex);
		if (i == ATH_INI_POST && FUNC0(ah))
			FUNC12(ah,
					   &ah->ini_radio_post_sys2ant,
					   modesIndex);
	}

	FUNC9(ah);

	/*
	 * RXGAIN initvals.
	 */
	FUNC8(&ah->iniModesRxGain, 1, regWrites);

	if (FUNC0(ah)) {
		/*
		 * CUS217 mix LNA mode.
		 */
		if (FUNC10(ah) == 2) {
			FUNC8(&ah->ini_modes_rxgain_bb_core,
					1, regWrites);
			FUNC8(&ah->ini_modes_rxgain_bb_postamble,
					modesIndex, regWrites);
		}

		/*
		 * 5G-XLNA
		 */
		if ((FUNC10(ah) == 2) ||
		    (FUNC10(ah) == 3)) {
			FUNC8(&ah->ini_modes_rxgain_xlna,
					modesIndex, regWrites);
		}
	}

	if (FUNC2(ah) || FUNC3(ah))
		FUNC8(&ah->ini_modes_rx_gain_bounds, modesIndex,
				regWrites);

	if (FUNC3(ah) && (FUNC10(ah) == 0))
		FUNC8(&ah->ini_modes_rxgain_xlna,
				modesIndex, regWrites);
	/*
	 * TXGAIN initvals.
	 */
	if (FUNC2(ah) || FUNC1(ah) || FUNC3(ah)) {
		int modes_txgain_index = 1;

		if (FUNC2(ah))
			modes_txgain_index = FUNC15(ah, chan);

		if (FUNC3(ah))
			modes_txgain_index =
				FUNC16(ah, chan);

		if (modes_txgain_index < 0)
			return -EINVAL;

		FUNC8(&ah->iniModesTxGain, modes_txgain_index,
				regWrites);
	} else {
		FUNC8(&ah->iniModesTxGain, modesIndex, regWrites);
	}

	/*
	 * For 5GHz channels requiring Fast Clock, apply
	 * different modal values.
	 */
	if (FUNC5(ah, chan))
		FUNC8(&ah->iniModesFastClock,
				modesIndex, regWrites);

	/*
	 * Clock frequency initvals.
	 */
	FUNC8(&ah->iniAdditional, 1, regWrites);

	/*
	 * JAPAN regulatory.
	 */
	if (chan->channel == 2484) {
		FUNC12(ah, &ah->iniCckfirJapan2484, 1);

		if (FUNC1(ah))
			FUNC7(ah, AR_PHY_FCAL_2_0,
				      AR_PHY_FLC_PWR_THRESH, 0);
	}

	ah->modes_index = modesIndex;
	FUNC11(ah);
	FUNC14(ah, chan);
	FUNC13(ah, ah->rxchainmask, ah->txchainmask);
	FUNC17(ah, chan, false);

	return 0;
}