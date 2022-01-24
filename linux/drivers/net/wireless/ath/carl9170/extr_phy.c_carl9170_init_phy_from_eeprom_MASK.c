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
typedef  int u8 ;
typedef  int u32 ;
struct ar9170_eeprom_modal {int const switchSettling; int const pgaDesiredSize; int const adcDesiredSize; int const txEndToXpaOff; int const txFrameToXpaOn; int const txEndToRxOn; int thresh62; int const* txRxAttenCh; int const* rxTxMarginCh; int const* bswMargin; int const* iqCalICh; int const* iqCalQCh; int xpdGain; int /*<<< orphan*/ * antCtrlChain; int /*<<< orphan*/  antCtrlCommon; } ;
struct TYPE_2__ {int rx_mask; struct ar9170_eeprom_modal* modal_header; } ;
struct ar9170 {TYPE_1__ eeprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_PHY_DESIRED_SZ_ADC ; 
 int /*<<< orphan*/  AR9170_PHY_DESIRED_SZ_PGA ; 
 int /*<<< orphan*/  AR9170_PHY_GAIN_2GHZ_BSW_MARGIN ; 
 int /*<<< orphan*/  AR9170_PHY_GAIN_2GHZ_RXTX_MARGIN ; 
 int AR9170_PHY_REG_CAL_CHAINMASK ; 
 int AR9170_PHY_REG_DESIRED_SZ ; 
 int AR9170_PHY_REG_GAIN_2GHZ ; 
 int AR9170_PHY_REG_GAIN_2GHZ_CHAIN_2 ; 
 int AR9170_PHY_REG_RF_CTL3 ; 
 int AR9170_PHY_REG_RF_CTL4 ; 
 int AR9170_PHY_REG_RXGAIN ; 
 int AR9170_PHY_REG_RXGAIN_CHAIN_2 ; 
 int AR9170_PHY_REG_RX_CHAINMASK ; 
 int AR9170_PHY_REG_SETTLING ; 
 int AR9170_PHY_REG_SWITCH_CHAIN_0 ; 
 int AR9170_PHY_REG_SWITCH_CHAIN_2 ; 
 int AR9170_PHY_REG_SWITCH_COM ; 
 int FUNC0 (int) ; 
 int AR9170_PHY_REG_TPCRG1 ; 
 int /*<<< orphan*/  AR9170_PHY_RF_CTL3_TX_END_TO_A2_RX_ON ; 
 int /*<<< orphan*/  AR9170_PHY_RF_CTL4_FRAME_XPAA_ON ; 
 int /*<<< orphan*/  AR9170_PHY_RF_CTL4_FRAME_XPAB_ON ; 
 int /*<<< orphan*/  AR9170_PHY_RF_CTL4_TX_END_XPAA_OFF ; 
 int /*<<< orphan*/  AR9170_PHY_RF_CTL4_TX_END_XPAB_OFF ; 
 int /*<<< orphan*/  AR9170_PHY_RXGAIN_TXRX_ATTEN ; 
 int /*<<< orphan*/  AR9170_PHY_SETTLING_SWITCH ; 
 int /*<<< orphan*/  AR9170_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF ; 
 int /*<<< orphan*/  AR9170_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF ; 
 int /*<<< orphan*/  AR9170_PHY_TPCRG1_PD_GAIN_1 ; 
 int /*<<< orphan*/  AR9170_PHY_TPCRG1_PD_GAIN_2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int const) ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ar9170 *ar,
				bool is_2ghz, bool is_40mhz)
{
	static const u8 xpd2pd[16] = {
		0x2, 0x2, 0x2, 0x1, 0x2, 0x2, 0x6, 0x2,
		0x2, 0x3, 0x7, 0x2, 0xb, 0x2, 0x2, 0x2
	};
	/* pointer to the modal_header acc. to band */
	struct ar9170_eeprom_modal *m = &ar->eeprom.modal_header[is_2ghz];
	u32 val;

	FUNC4(ar);

	/* ant common control (index 0) */
	FUNC3(AR9170_PHY_REG_SWITCH_COM,
		FUNC7(m->antCtrlCommon));

	/* ant control chain 0 (index 1) */
	FUNC3(AR9170_PHY_REG_SWITCH_CHAIN_0,
		FUNC7(m->antCtrlChain[0]));

	/* ant control chain 2 (index 2) */
	FUNC3(AR9170_PHY_REG_SWITCH_CHAIN_2,
		FUNC7(m->antCtrlChain[1]));

	/* SwSettle (index 3) */
	if (!is_40mhz) {
		val = FUNC2(AR9170_PHY_REG_SETTLING,
				     is_2ghz, is_40mhz);
		FUNC1(AR9170_PHY_SETTLING_SWITCH, val, m->switchSettling);
		FUNC3(AR9170_PHY_REG_SETTLING, val);
	}

	/* adcDesired, pdaDesired (index 4) */
	val = FUNC2(AR9170_PHY_REG_DESIRED_SZ, is_2ghz, is_40mhz);
	FUNC1(AR9170_PHY_DESIRED_SZ_PGA, val, m->pgaDesiredSize);
	FUNC1(AR9170_PHY_DESIRED_SZ_ADC, val, m->adcDesiredSize);
	FUNC3(AR9170_PHY_REG_DESIRED_SZ, val);

	/* TxEndToXpaOff, TxFrameToXpaOn (index 5) */
	val = FUNC2(AR9170_PHY_REG_RF_CTL4, is_2ghz, is_40mhz);
	FUNC1(AR9170_PHY_RF_CTL4_TX_END_XPAB_OFF, val, m->txEndToXpaOff);
	FUNC1(AR9170_PHY_RF_CTL4_TX_END_XPAA_OFF, val, m->txEndToXpaOff);
	FUNC1(AR9170_PHY_RF_CTL4_FRAME_XPAB_ON, val, m->txFrameToXpaOn);
	FUNC1(AR9170_PHY_RF_CTL4_FRAME_XPAA_ON, val, m->txFrameToXpaOn);
	FUNC3(AR9170_PHY_REG_RF_CTL4, val);

	/* TxEndToRxOn (index 6) */
	val = FUNC2(AR9170_PHY_REG_RF_CTL3, is_2ghz, is_40mhz);
	FUNC1(AR9170_PHY_RF_CTL3_TX_END_TO_A2_RX_ON, val, m->txEndToRxOn);
	FUNC3(AR9170_PHY_REG_RF_CTL3, val);

	/* thresh62 (index 7) */
	val = FUNC2(0x1c8864, is_2ghz, is_40mhz);
	val = (val & ~0x7f000) | (m->thresh62 << 12);
	FUNC3(0x1c8864, val);

	/* tx/rx attenuation chain 0 (index 8) */
	val = FUNC2(AR9170_PHY_REG_RXGAIN, is_2ghz, is_40mhz);
	FUNC1(AR9170_PHY_RXGAIN_TXRX_ATTEN, val, m->txRxAttenCh[0]);
	FUNC3(AR9170_PHY_REG_RXGAIN, val);

	/* tx/rx attenuation chain 2 (index 9) */
	val = FUNC2(AR9170_PHY_REG_RXGAIN_CHAIN_2,
			       is_2ghz, is_40mhz);
	FUNC1(AR9170_PHY_RXGAIN_TXRX_ATTEN, val, m->txRxAttenCh[1]);
	FUNC3(AR9170_PHY_REG_RXGAIN_CHAIN_2, val);

	/* tx/rx margin chain 0 (index 10) */
	val = FUNC2(AR9170_PHY_REG_GAIN_2GHZ, is_2ghz, is_40mhz);
	FUNC1(AR9170_PHY_GAIN_2GHZ_RXTX_MARGIN, val, m->rxTxMarginCh[0]);
	/* bsw margin chain 0 for 5GHz only */
	if (!is_2ghz)
		FUNC1(AR9170_PHY_GAIN_2GHZ_BSW_MARGIN, val, m->bswMargin[0]);
	FUNC3(AR9170_PHY_REG_GAIN_2GHZ, val);

	/* tx/rx margin chain 2 (index 11) */
	val = FUNC2(AR9170_PHY_REG_GAIN_2GHZ_CHAIN_2,
			       is_2ghz, is_40mhz);
	FUNC1(AR9170_PHY_GAIN_2GHZ_RXTX_MARGIN, val, m->rxTxMarginCh[1]);
	FUNC3(AR9170_PHY_REG_GAIN_2GHZ_CHAIN_2, val);

	/* iqCall, iqCallq chain 0 (index 12) */
	val = FUNC2(FUNC0(0),
			       is_2ghz, is_40mhz);
	FUNC1(AR9170_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, val, m->iqCalICh[0]);
	FUNC1(AR9170_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, val, m->iqCalQCh[0]);
	FUNC3(FUNC0(0), val);

	/* iqCall, iqCallq chain 2 (index 13) */
	val = FUNC2(FUNC0(2),
			       is_2ghz, is_40mhz);
	FUNC1(AR9170_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, val, m->iqCalICh[1]);
	FUNC1(AR9170_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, val, m->iqCalQCh[1]);
	FUNC3(FUNC0(2), val);

	/* xpd gain mask (index 14) */
	val = FUNC2(AR9170_PHY_REG_TPCRG1, is_2ghz, is_40mhz);
	FUNC1(AR9170_PHY_TPCRG1_PD_GAIN_1, val,
		xpd2pd[m->xpdGain & 0xf] & 3);
	FUNC1(AR9170_PHY_TPCRG1_PD_GAIN_2, val,
		xpd2pd[m->xpdGain & 0xf] >> 2);
	FUNC3(AR9170_PHY_REG_TPCRG1, val);

	FUNC3(AR9170_PHY_REG_RX_CHAINMASK, ar->eeprom.rx_mask);
	FUNC3(AR9170_PHY_REG_CAL_CHAINMASK, ar->eeprom.rx_mask);

	FUNC5();
	return FUNC6();
}