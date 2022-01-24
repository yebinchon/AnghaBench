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
struct ath_hw {int modes_index; int /*<<< orphan*/  iniCckfirJapan2484; int /*<<< orphan*/  iniModesFastClock; int /*<<< orphan*/  ini_modes_rxgain_bb_postamble; int /*<<< orphan*/  ini_modes_rxgain_bb_core; int /*<<< orphan*/  iniModesTxGain; int /*<<< orphan*/  ini_radio_post_sys2ant; int /*<<< orphan*/ * iniRadio; int /*<<< orphan*/ * iniBB; int /*<<< orphan*/ * iniMac; int /*<<< orphan*/ * iniSOC; } ;
struct ath9k_channel {int channel; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 size_t ATH_INI_POST ; 
 scalar_t__ FUNC3 (struct ath9k_channel*) ; 
 scalar_t__ FUNC4 (struct ath_hw*,struct ath9k_channel*) ; 
 scalar_t__ FUNC5 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,struct ath9k_channel*) ; 

__attribute__((used)) static int FUNC10(struct ath_hw *ah,
				      struct ath9k_channel *chan,
				      u8 *ini_reloaded)
{
	unsigned int regWrites = 0;
	u32 modesIndex, txgain_index;

	if (FUNC3(chan))
		modesIndex = FUNC5(chan) ? 2 : 1;
	else
		modesIndex = FUNC5(chan) ? 3 : 4;

	txgain_index = FUNC1(ah) ? 1 : modesIndex;

	if (modesIndex == ah->modes_index) {
		*ini_reloaded = false;
		goto set_rfmode;
	}

	FUNC8(ah, &ah->iniSOC[ATH_INI_POST], modesIndex);
	FUNC8(ah, &ah->iniMac[ATH_INI_POST], modesIndex);
	FUNC8(ah, &ah->iniBB[ATH_INI_POST], modesIndex);
	FUNC8(ah, &ah->iniRadio[ATH_INI_POST], modesIndex);

	if (FUNC0(ah))
		FUNC8(ah, &ah->ini_radio_post_sys2ant,
				   modesIndex);

	FUNC6(&ah->iniModesTxGain, txgain_index, regWrites);

	if (FUNC0(ah)) {
		/*
		 * CUS217 mix LNA mode.
		 */
		if (FUNC7(ah) == 2) {
			FUNC6(&ah->ini_modes_rxgain_bb_core,
					1, regWrites);
			FUNC6(&ah->ini_modes_rxgain_bb_postamble,
					modesIndex, regWrites);
		}
	}

	/*
	 * For 5GHz channels requiring Fast Clock, apply
	 * different modal values.
	 */
	if (FUNC4(ah, chan))
		FUNC6(&ah->iniModesFastClock, modesIndex, regWrites);

	if (FUNC2(ah))
		FUNC6(&ah->iniModesFastClock, 1, regWrites);

	/*
	 * JAPAN regulatory.
	 */
	if (chan->channel == 2484)
		FUNC8(ah, &ah->iniCckfirJapan2484, 1);

	ah->modes_index = modesIndex;
	*ini_reloaded = true;

set_rfmode:
	FUNC9(ah, chan);
	return 0;
}