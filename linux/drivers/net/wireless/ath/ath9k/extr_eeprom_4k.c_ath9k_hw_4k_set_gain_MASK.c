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
typedef  int /*<<< orphan*/  u8 ;
struct modal_eep_4k_header {int /*<<< orphan*/ * rxTxMarginCh; int /*<<< orphan*/ * xatten2Db; int /*<<< orphan*/ * xatten2Margin; int /*<<< orphan*/ * bswAtten; int /*<<< orphan*/ * bswMargin; int /*<<< orphan*/ * txRxAttenCh; int /*<<< orphan*/ * iqCalQCh; int /*<<< orphan*/ * iqCalICh; int /*<<< orphan*/ * antCtrlChain; } ;
struct ath_hw {int dummy; } ;
struct ar5416_eeprom_4k {int dummy; } ;

/* Variables and functions */
 scalar_t__ AR5416_EEP_MINOR_VER_3 ; 
 int /*<<< orphan*/  AR9280_PHY_RXGAIN_TXRX_ATTEN ; 
 int /*<<< orphan*/  AR9280_PHY_RXGAIN_TXRX_MARGIN ; 
 scalar_t__ AR_PHY_GAIN_2GHZ ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN1_DB ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN2_DB ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN ; 
 scalar_t__ AR_PHY_RXGAIN ; 
 int /*<<< orphan*/  AR_PHY_SWITCH_CHAIN_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF ; 
 int AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ath_hw *ah,
				 struct modal_eep_4k_header *pModal,
				 struct ar5416_eeprom_4k *eep,
				 u8 txRxAttenLocal)
{
	FUNC1(ah);
	FUNC2(ah, AR_PHY_SWITCH_CHAIN_0,
		FUNC7(pModal->antCtrlChain[0]), 0);

	FUNC2(ah, FUNC0(0),
		FUNC5(pModal->iqCalICh[0], AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF) |
		FUNC5(pModal->iqCalQCh[0], AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF),
		AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF | AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF);

	if (FUNC6(ah) >= AR5416_EEP_MINOR_VER_3) {
		txRxAttenLocal = pModal->txRxAttenCh[0];

		FUNC4(ah, AR_PHY_GAIN_2GHZ,
			      AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, pModal->bswMargin[0]);
		FUNC4(ah, AR_PHY_GAIN_2GHZ,
			      AR_PHY_GAIN_2GHZ_XATTEN1_DB, pModal->bswAtten[0]);
		FUNC4(ah, AR_PHY_GAIN_2GHZ,
			      AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN,
			      pModal->xatten2Margin[0]);
		FUNC4(ah, AR_PHY_GAIN_2GHZ,
			      AR_PHY_GAIN_2GHZ_XATTEN2_DB, pModal->xatten2Db[0]);

		/* Set the block 1 value to block 0 value */
		FUNC4(ah, AR_PHY_GAIN_2GHZ + 0x1000,
			      AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN,
			      pModal->bswMargin[0]);
		FUNC4(ah, AR_PHY_GAIN_2GHZ + 0x1000,
			      AR_PHY_GAIN_2GHZ_XATTEN1_DB, pModal->bswAtten[0]);
		FUNC4(ah, AR_PHY_GAIN_2GHZ + 0x1000,
			      AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN,
			      pModal->xatten2Margin[0]);
		FUNC4(ah, AR_PHY_GAIN_2GHZ + 0x1000,
			      AR_PHY_GAIN_2GHZ_XATTEN2_DB,
			      pModal->xatten2Db[0]);
	}

	FUNC4(ah, AR_PHY_RXGAIN,
		      AR9280_PHY_RXGAIN_TXRX_ATTEN, txRxAttenLocal);
	FUNC4(ah, AR_PHY_RXGAIN,
		      AR9280_PHY_RXGAIN_TXRX_MARGIN, pModal->rxTxMarginCh[0]);

	FUNC4(ah, AR_PHY_RXGAIN + 0x1000,
		      AR9280_PHY_RXGAIN_TXRX_ATTEN, txRxAttenLocal);
	FUNC4(ah, AR_PHY_RXGAIN + 0x1000,
		      AR9280_PHY_RXGAIN_TXRX_MARGIN, pModal->rxTxMarginCh[0]);
	FUNC3(ah);
}