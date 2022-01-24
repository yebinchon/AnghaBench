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
typedef  int u16 ;
struct TYPE_2__ {int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; void** tx_rx_cal_radio_saveregs; int /*<<< orphan*/  radio_chanspec; int /*<<< orphan*/  internal_tx_iqlo_cal_tapoff_intpa_nphy; scalar_t__ use_int_tx_iqlo_cal_nphy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IQCAL_IDAC ; 
 int /*<<< orphan*/  IQCAL_VCM_HG ; 
 int NPHY_BandControl_currentBand ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PHY_CORE_0 ; 
 scalar_t__ FUNC3 (struct brcms_phy*) ; 
 int RADIO_2055_CORE1_TXRF_IQCAL1 ; 
 int RADIO_2055_CORE1_TXRF_IQCAL2 ; 
 int /*<<< orphan*/  RADIO_2055_CORE1_TX_BB_MXGM ; 
 int RADIO_2055_CORE2_TXRF_IQCAL1 ; 
 int RADIO_2055_CORE2_TXRF_IQCAL2 ; 
 int /*<<< orphan*/  RADIO_2055_CORE2_TX_BB_MXGM ; 
 int RADIO_2055_PWRDET_RXTX_CORE1 ; 
 int RADIO_2055_PWRDET_RXTX_CORE2 ; 
 int RADIO_2056_TX0 ; 
 int RADIO_2056_TX1 ; 
 int RADIO_2056_TX_IQCAL_IDAC ; 
 int RADIO_2056_TX_IQCAL_VCM_HG ; 
 int RADIO_2056_TX_TSSIA ; 
 int RADIO_2056_TX_TSSIG ; 
 int RADIO_2056_TX_TSSI_MISC1 ; 
 int RADIO_2056_TX_TSSI_MISC2 ; 
 int RADIO_2056_TX_TSSI_MISC3 ; 
 int RADIO_2056_TX_TSSI_VCM ; 
 int RADIO_2056_TX_TX_AMP_DET ; 
 int RADIO_2056_TX_TX_SSI_MASTER ; 
 int RADIO_2056_TX_TX_SSI_MUX ; 
 int /*<<< orphan*/  RADIO_2057 ; 
 void* FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSSIA ; 
 int /*<<< orphan*/  TSSIG ; 
 int /*<<< orphan*/  TSSI_MISC1 ; 
 int /*<<< orphan*/  TSSI_VCM ; 
 int /*<<< orphan*/  TX ; 
 int /*<<< orphan*/  TX_SSI_MASTER ; 
 int /*<<< orphan*/  TX_SSI_MUX ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct brcms_phy*,int) ; 
 void* FUNC9 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC11(struct brcms_phy *pi)
{
	u16 jtag_core, core;

	if (FUNC1(pi->pubpi.phy_rev, 7)) {

		for (core = 0; core <= 1; core++) {

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 0] =
				FUNC4(pi, RADIO_2057, TX, core,
						TX_SSI_MASTER);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 1] =
				FUNC4(pi, RADIO_2057, TX, core,
						IQCAL_VCM_HG);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 2] =
				FUNC4(pi, RADIO_2057, TX, core,
						IQCAL_IDAC);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 3] =
				FUNC4(pi, RADIO_2057, TX, core,
						TSSI_VCM);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 4] = 0;

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 5] =
				FUNC4(pi, RADIO_2057, TX, core,
						TX_SSI_MUX);

			if (pi->pubpi.radiorev != 5)
				pi->tx_rx_cal_radio_saveregs[(core * 11) + 6] =
					FUNC4(pi, RADIO_2057, TX,
							core,
							TSSIA);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 7] =
			       FUNC4(pi, RADIO_2057, TX, core, TSSIG);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 8] =
				FUNC4(pi, RADIO_2057, TX, core,
						TSSI_MISC1);

			if (FUNC0(pi->radio_chanspec)) {
				FUNC5(pi, RADIO_2057, TX, core,
						 TX_SSI_MASTER, 0x0a);
				FUNC5(pi, RADIO_2057, TX, core,
						 IQCAL_VCM_HG, 0x43);
				FUNC5(pi, RADIO_2057, TX, core,
						 IQCAL_IDAC, 0x55);
				FUNC5(pi, RADIO_2057, TX, core,
						 TSSI_VCM, 0x00);
				FUNC5(pi, RADIO_2057, TX, core,
						 TSSIG, 0x00);
				if (pi->use_int_tx_iqlo_cal_nphy) {
					FUNC5(pi, RADIO_2057, TX,
							 core, TX_SSI_MUX, 0x4);
					if (!(pi->
					internal_tx_iqlo_cal_tapoff_intpa_nphy))
						FUNC5(pi, RADIO_2057,
								 TX, core,
								 TSSIA, 0x31);
					else
						FUNC5(pi, RADIO_2057,
								 TX, core,
								 TSSIA, 0x21);
				}
				FUNC5(pi, RADIO_2057, TX, core,
						 TSSI_MISC1, 0x00);
			} else {
				FUNC5(pi, RADIO_2057, TX, core,
						 TX_SSI_MASTER, 0x06);
				FUNC5(pi, RADIO_2057, TX, core,
						 IQCAL_VCM_HG, 0x43);
				FUNC5(pi, RADIO_2057, TX, core,
						 IQCAL_IDAC, 0x55);
				FUNC5(pi, RADIO_2057, TX, core,
						 TSSI_VCM, 0x00);

				if (pi->pubpi.radiorev != 5)
					FUNC5(pi, RADIO_2057, TX,
							 core, TSSIA, 0x00);
				if (pi->use_int_tx_iqlo_cal_nphy) {
					FUNC5(pi, RADIO_2057, TX,
							 core, TX_SSI_MUX,
							 0x06);
					if (!(pi->
					internal_tx_iqlo_cal_tapoff_intpa_nphy))
						FUNC5(pi, RADIO_2057,
								 TX, core,
								 TSSIG, 0x31);
					else
						FUNC5(pi, RADIO_2057,
								 TX, core,
								 TSSIG, 0x21);
				}
				FUNC5(pi, RADIO_2057, TX, core,
						 TSSI_MISC1, 0x00);
			}
		}
	} else if (FUNC1(pi->pubpi.phy_rev, 3)) {

		for (core = 0; core <= 1; core++) {
			jtag_core =
				(core ==
				 PHY_CORE_0) ? RADIO_2056_TX0 : RADIO_2056_TX1;

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 0] =
				FUNC9(pi,
					       RADIO_2056_TX_TX_SSI_MASTER |
					       jtag_core);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 1] =
				FUNC9(pi,
					       RADIO_2056_TX_IQCAL_VCM_HG |
					       jtag_core);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 2] =
				FUNC9(pi,
					       RADIO_2056_TX_IQCAL_IDAC |
					       jtag_core);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 3] =
				FUNC9(
					pi,
					RADIO_2056_TX_TSSI_VCM |
					jtag_core);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 4] =
				FUNC9(pi,
					       RADIO_2056_TX_TX_AMP_DET |
					       jtag_core);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 5] =
				FUNC9(pi,
					       RADIO_2056_TX_TX_SSI_MUX |
					       jtag_core);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 6] =
				FUNC9(pi,
					       RADIO_2056_TX_TSSIA | jtag_core);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 7] =
				FUNC9(pi,
					       RADIO_2056_TX_TSSIG | jtag_core);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 8] =
				FUNC9(pi,
					       RADIO_2056_TX_TSSI_MISC1 |
					       jtag_core);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 9] =
				FUNC9(pi,
					       RADIO_2056_TX_TSSI_MISC2 |
					       jtag_core);

			pi->tx_rx_cal_radio_saveregs[(core * 11) + 10] =
				FUNC9(pi,
					       RADIO_2056_TX_TSSI_MISC3 |
					       jtag_core);

			if (FUNC0(pi->radio_chanspec)) {
				FUNC10(pi,
						RADIO_2056_TX_TX_SSI_MASTER |
						jtag_core, 0x0a);
				FUNC10(pi,
						RADIO_2056_TX_IQCAL_VCM_HG |
						jtag_core, 0x40);
				FUNC10(pi,
						RADIO_2056_TX_IQCAL_IDAC |
						jtag_core, 0x55);
				FUNC10(pi,
						RADIO_2056_TX_TSSI_VCM |
						jtag_core, 0x00);
				FUNC10(pi,
						RADIO_2056_TX_TX_AMP_DET |
						jtag_core, 0x00);

				if (FUNC3(pi)) {
					FUNC10(
						pi,
						RADIO_2056_TX_TX_SSI_MUX
						| jtag_core, 0x4);
					FUNC10(pi,
							RADIO_2056_TX_TSSIA |
							jtag_core, 0x1);
				} else {
					FUNC10(
						pi,
						RADIO_2056_TX_TX_SSI_MUX
						| jtag_core, 0x00);
					FUNC10(pi,
							RADIO_2056_TX_TSSIA |
							jtag_core, 0x2f);
				}
				FUNC10(pi,
						RADIO_2056_TX_TSSIG | jtag_core,
						0x00);
				FUNC10(pi,
						RADIO_2056_TX_TSSI_MISC1 |
						jtag_core, 0x00);

				FUNC10(pi,
						RADIO_2056_TX_TSSI_MISC2 |
						jtag_core, 0x00);
				FUNC10(pi,
						RADIO_2056_TX_TSSI_MISC3 |
						jtag_core, 0x00);
			} else {
				FUNC10(pi,
						RADIO_2056_TX_TX_SSI_MASTER |
						jtag_core, 0x06);
				FUNC10(pi,
						RADIO_2056_TX_IQCAL_VCM_HG |
						jtag_core, 0x40);
				FUNC10(pi,
						RADIO_2056_TX_IQCAL_IDAC |
						jtag_core, 0x55);
				FUNC10(pi,
						RADIO_2056_TX_TSSI_VCM |
						jtag_core, 0x00);
				FUNC10(pi,
						RADIO_2056_TX_TX_AMP_DET |
						jtag_core, 0x00);
				FUNC10(pi,
						RADIO_2056_TX_TSSIA | jtag_core,
						0x00);

				if (FUNC3(pi)) {

					FUNC10(
						pi,
						RADIO_2056_TX_TX_SSI_MUX
						| jtag_core, 0x06);
					if (FUNC2(pi->pubpi.phy_rev, 5))
						FUNC10(
							pi,
							RADIO_2056_TX_TSSIG
							| jtag_core,
							0x11);
					else
						FUNC10(
							pi,
							RADIO_2056_TX_TSSIG
							| jtag_core,
							0x1);
				} else {
					FUNC10(
						pi,
						RADIO_2056_TX_TX_SSI_MUX
						| jtag_core, 0x00);
					FUNC10(pi,
							RADIO_2056_TX_TSSIG |
							jtag_core, 0x20);
				}

				FUNC10(pi,
						RADIO_2056_TX_TSSI_MISC1 |
						jtag_core, 0x00);
				FUNC10(pi,
						RADIO_2056_TX_TSSI_MISC2 |
						jtag_core, 0x00);
				FUNC10(pi,
						RADIO_2056_TX_TSSI_MISC3 |
						jtag_core, 0x00);
			}
		}
	} else {

		pi->tx_rx_cal_radio_saveregs[0] =
			FUNC9(pi, RADIO_2055_CORE1_TXRF_IQCAL1);
		FUNC10(pi, RADIO_2055_CORE1_TXRF_IQCAL1, 0x29);
		pi->tx_rx_cal_radio_saveregs[1] =
			FUNC9(pi, RADIO_2055_CORE1_TXRF_IQCAL2);
		FUNC10(pi, RADIO_2055_CORE1_TXRF_IQCAL2, 0x54);

		pi->tx_rx_cal_radio_saveregs[2] =
			FUNC9(pi, RADIO_2055_CORE2_TXRF_IQCAL1);
		FUNC10(pi, RADIO_2055_CORE2_TXRF_IQCAL1, 0x29);
		pi->tx_rx_cal_radio_saveregs[3] =
			FUNC9(pi, RADIO_2055_CORE2_TXRF_IQCAL2);
		FUNC10(pi, RADIO_2055_CORE2_TXRF_IQCAL2, 0x54);

		pi->tx_rx_cal_radio_saveregs[4] =
			FUNC9(pi, RADIO_2055_PWRDET_RXTX_CORE1);
		pi->tx_rx_cal_radio_saveregs[5] =
			FUNC9(pi, RADIO_2055_PWRDET_RXTX_CORE2);

		if ((FUNC8(pi, 0x09) & NPHY_BandControl_currentBand) ==
		    0) {

			FUNC10(pi, RADIO_2055_PWRDET_RXTX_CORE1, 0x04);
			FUNC10(pi, RADIO_2055_PWRDET_RXTX_CORE2, 0x04);
		} else {

			FUNC10(pi, RADIO_2055_PWRDET_RXTX_CORE1, 0x20);
			FUNC10(pi, RADIO_2055_PWRDET_RXTX_CORE2, 0x20);
		}

		if (FUNC2(pi->pubpi.phy_rev, 2)) {

			FUNC7(pi, RADIO_2055_CORE1_TX_BB_MXGM, 0x20);
			FUNC7(pi, RADIO_2055_CORE2_TX_BB_MXGM, 0x20);
		} else {

			FUNC6(pi, RADIO_2055_CORE1_TX_BB_MXGM, 0xdf);
			FUNC6(pi, RADIO_2055_CORE2_TX_BB_MXGM, 0xdf);
		}
	}
}