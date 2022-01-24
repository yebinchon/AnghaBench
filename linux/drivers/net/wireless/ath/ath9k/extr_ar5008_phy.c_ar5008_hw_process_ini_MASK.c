#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {scalar_t__ analog_shiftreg; } ;
struct TYPE_8__ {int ia_rows; } ;
struct ath_hw {int /*<<< orphan*/  iniModesFastClock; int /*<<< orphan*/  iniBB_RfGain; TYPE_2__ config; TYPE_4__ iniCommon; int /*<<< orphan*/  iniModesTxGain; int /*<<< orphan*/  iniModesRxGain; scalar_t__ need_an_top2_fixup; TYPE_4__ iniModes; int /*<<< orphan*/  iniAddac; TYPE_1__* eep_ops; } ;
struct ath_common {TYPE_3__* bus_ops; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_7__ {scalar_t__ ath_bus_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_addac ) (struct ath_hw*,struct ath9k_channel*) ;} ;

/* Variables and functions */
 int AR_AN_TOP2 ; 
 int AR_AN_TOP2_PWDCLKIND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AR_PHY_ADC_SERIAL_CTL ; 
 int /*<<< orphan*/  AR_PHY_RF_CTL3 ; 
 int AR_PHY_SEL_EXTERNAL_RADIO ; 
 int AR_PHY_SEL_INTERNAL_ADDAC ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN_ENA ; 
 int /*<<< orphan*/  AR_PHY_TX_END_TO_ADC_ON ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ ATH_USB ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int FUNC7 (TYPE_4__*,int,int) ; 
 scalar_t__ FUNC8 (struct ath9k_channel*) ; 
 scalar_t__ FUNC9 (struct ath_hw*,struct ath9k_channel*) ; 
 scalar_t__ FUNC10 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC19 (struct ath_hw*,struct ath9k_channel*,int) ; 
 struct ath_common* FUNC20 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC21 (struct ath_hw*,struct ath9k_channel*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC23 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 

__attribute__((used)) static int FUNC26(struct ath_hw *ah,
				 struct ath9k_channel *chan)
{
	struct ath_common *common = FUNC20(ah);
	int i, regWrites = 0;
	u32 modesIndex, freqIndex;

	if (FUNC8(chan)) {
		freqIndex = 1;
		modesIndex = FUNC10(chan) ? 2 : 1;
	} else {
		freqIndex = 2;
		modesIndex = FUNC10(chan) ? 3 : 4;
	}

	/*
	 * Set correct baseband to analog shift setting to
	 * access analog chips.
	 */
	FUNC14(ah, FUNC0(0), 0x00000007);

	/* Write ADDAC shifts */
	FUNC14(ah, AR_PHY_ADC_SERIAL_CTL, AR_PHY_SEL_EXTERNAL_RADIO);
	if (ah->eep_ops->set_addac)
		ah->eep_ops->set_addac(ah, chan);

	FUNC15(&ah->iniAddac, 1, regWrites);
	FUNC14(ah, AR_PHY_ADC_SERIAL_CTL, AR_PHY_SEL_INTERNAL_ADDAC);

	FUNC6(ah);

	for (i = 0; i < ah->iniModes.ia_rows; i++) {
		u32 reg = FUNC7(&ah->iniModes, i, 0);
		u32 val = FUNC7(&ah->iniModes, i, modesIndex);

		if (reg == AR_AN_TOP2 && ah->need_an_top2_fixup)
			val &= ~AR_AN_TOP2_PWDCLKIND;

		FUNC14(ah, reg, val);

		if (reg >= 0x7800 && reg < 0x78a0
		    && ah->config.analog_shiftreg
		    && (common->bus_ops->ath_bus_type != ATH_USB)) {
			FUNC25(100);
		}

		FUNC5(regWrites);
	}

	FUNC11(ah);

	if (FUNC2(ah) || FUNC4(ah))
		FUNC15(&ah->iniModesRxGain, modesIndex, regWrites);

	if (FUNC2(ah) || FUNC3(ah) ||
	    FUNC4(ah))
		FUNC15(&ah->iniModesTxGain, modesIndex, regWrites);

	if (FUNC1(ah)) {
		FUNC13(ah, AR_PHY_SPECTRAL_SCAN, AR_PHY_SPECTRAL_SCAN_ENA);
		FUNC12(ah, AR_PHY_RF_CTL3, AR_PHY_TX_END_TO_ADC_ON, 0xa);
	}

	FUNC6(ah);

	/* Write common array parameters */
	for (i = 0; i < ah->iniCommon.ia_rows; i++) {
		u32 reg = FUNC7(&ah->iniCommon, i, 0);
		u32 val = FUNC7(&ah->iniCommon, i, 1);

		FUNC14(ah, reg, val);

		if (reg >= 0x7800 && reg < 0x78a0
		    && ah->config.analog_shiftreg
		    && (common->bus_ops->ath_bus_type != ATH_USB)) {
			FUNC25(100);
		}

		FUNC5(regWrites);
	}

	FUNC11(ah);

	FUNC15(&ah->iniBB_RfGain, freqIndex, regWrites);

	if (FUNC9(ah, chan))
		FUNC15(&ah->iniModesFastClock, modesIndex,
				regWrites);

	FUNC17(ah, chan);
	FUNC18(ah, chan);
	FUNC16(ah);
	FUNC22(ah);
	FUNC19(ah, chan, false);

	/* Write analog registers */
	if (!FUNC21(ah, chan, freqIndex)) {
		FUNC23(FUNC20(ah), "ar5416SetRfRegs failed\n");
		return -EIO;
	}

	return 0;
}