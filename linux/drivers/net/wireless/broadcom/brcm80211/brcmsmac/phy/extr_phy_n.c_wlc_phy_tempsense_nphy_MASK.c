#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {scalar_t__ phy_tempsense_offset; TYPE_2__ pubpi; TYPE_1__* sh; } ;
typedef  int s32 ;
typedef  scalar_t__ s16 ;
typedef  int auxADC_Vl ;
struct TYPE_3__ {scalar_t__ chip; } ;

/* Variables and functions */
 scalar_t__ BCMA_CHIP_ID_BCM5357 ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID2 ; 
 int /*<<< orphan*/  NPHY_RSSI_SEL_IQ ; 
 int /*<<< orphan*/  NPHY_TBL_ID_AFECTRL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RADIO_2055_CAL_TS ; 
 int /*<<< orphan*/  RADIO_2055_CORE1_TXRF_IQCAL1 ; 
 int /*<<< orphan*/  RADIO_2055_CORE1_TXRF_IQCAL2 ; 
 int /*<<< orphan*/  RADIO_2055_CORE2_TXRF_IQCAL1 ; 
 int /*<<< orphan*/  RADIO_2055_CORE2_TXRF_IQCAL2 ; 
 int /*<<< orphan*/  RADIO_2055_PD_PLL_TS ; 
 int /*<<< orphan*/  RADIO_2055_PWRDET_RXTX_CORE1 ; 
 int /*<<< orphan*/  RADIO_2055_PWRDET_RXTX_CORE2 ; 
 int /*<<< orphan*/  RADIO_2056_SYN_TEMPPROCSENSE ; 
 int /*<<< orphan*/  RADIO_2057_TEMPSENSE_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int,int) ; 
 int FUNC3 (struct brcms_phy*,int) ; 
 int FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 

s16 FUNC13(struct brcms_phy *pi)
{
	u16 core1_txrf_iqcal1_save, core1_txrf_iqcal2_save;
	u16 core2_txrf_iqcal1_save, core2_txrf_iqcal2_save;
	u16 pwrdet_rxtx_core1_save;
	u16 pwrdet_rxtx_core2_save;
	u16 afectrlCore1_save;
	u16 afectrlCore2_save;
	u16 afectrlOverride_save;
	u16 afectrlOverride2_save;
	u16 pd_pll_ts_save;
	u16 gpioSel_save;
	s32 radio_temp[4];
	s32 radio_temp2[4];
	u16 syn_tempprocsense_save;
	s16 offset = 0;

	if (FUNC0(pi->pubpi.phy_rev, 7)) {
		u16 auxADC_Vmid, auxADC_Av, auxADC_Vmid_save, auxADC_Av_save;
		u16 auxADC_rssi_ctrlL_save, auxADC_rssi_ctrlH_save;
		u16 auxADC_rssi_ctrlL, auxADC_rssi_ctrlH;
		s32 auxADC_Vl;
		u16 RfctrlOverride5_save, RfctrlOverride6_save;
		u16 RfctrlMiscReg5_save, RfctrlMiscReg6_save;
		u16 RSSIMultCoef0QPowerDet_save;
		u16 tempsense_Rcal;

		syn_tempprocsense_save =
			FUNC4(pi, RADIO_2057_TEMPSENSE_CONFIG);

		afectrlCore1_save = FUNC3(pi, 0xa6);
		afectrlCore2_save = FUNC3(pi, 0xa7);
		afectrlOverride_save = FUNC3(pi, 0x8f);
		afectrlOverride2_save = FUNC3(pi, 0xa5);
		RSSIMultCoef0QPowerDet_save = FUNC3(pi, 0x1ae);
		RfctrlOverride5_save = FUNC3(pi, 0x346);
		RfctrlOverride6_save = FUNC3(pi, 0x347);
		RfctrlMiscReg5_save = FUNC3(pi, 0x344);
		RfctrlMiscReg6_save = FUNC3(pi, 0x345);

		FUNC8(pi, NPHY_TBL_ID_AFECTRL, 1, 0x0A, 16,
					&auxADC_Vmid_save);
		FUNC8(pi, NPHY_TBL_ID_AFECTRL, 1, 0x0E, 16,
					&auxADC_Av_save);
		FUNC8(pi, NPHY_TBL_ID_AFECTRL, 1, 0x02, 16,
					&auxADC_rssi_ctrlL_save);
		FUNC8(pi, NPHY_TBL_ID_AFECTRL, 1, 0x03, 16,
					&auxADC_rssi_ctrlH_save);

		FUNC10(pi, 0x1ae, 0x0);

		auxADC_rssi_ctrlL = 0x0;
		auxADC_rssi_ctrlH = 0x20;
		FUNC9(pi, NPHY_TBL_ID_AFECTRL, 1, 0x02, 16,
					 &auxADC_rssi_ctrlL);
		FUNC9(pi, NPHY_TBL_ID_AFECTRL, 1, 0x03, 16,
					 &auxADC_rssi_ctrlH);

		tempsense_Rcal = syn_tempprocsense_save & 0x1c;

		FUNC11(pi, RADIO_2057_TEMPSENSE_CONFIG,
				tempsense_Rcal | 0x01);

		FUNC7(pi, (0x1 << 1),
						  1, 0, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID2);
		FUNC2(pi, 0xa6, (0x1 << 7), 0);
		FUNC2(pi, 0xa7, (0x1 << 7), 0);
		FUNC2(pi, 0x8f, (0x1 << 7), (0x1 << 7));
		FUNC2(pi, 0xa5, (0x1 << 7), (0x1 << 7));

		FUNC2(pi, 0xa6, (0x1 << 2), (0x1 << 2));
		FUNC2(pi, 0xa7, (0x1 << 2), (0x1 << 2));
		FUNC2(pi, 0x8f, (0x1 << 2), (0x1 << 2));
		FUNC2(pi, 0xa5, (0x1 << 2), (0x1 << 2));
		FUNC5(5);
		FUNC2(pi, 0xa6, (0x1 << 2), 0);
		FUNC2(pi, 0xa7, (0x1 << 2), 0);
		FUNC2(pi, 0xa6, (0x1 << 3), 0);
		FUNC2(pi, 0xa7, (0x1 << 3), 0);
		FUNC2(pi, 0x8f, (0x1 << 3), (0x1 << 3));
		FUNC2(pi, 0xa5, (0x1 << 3), (0x1 << 3));
		FUNC2(pi, 0xa6, (0x1 << 6), 0);
		FUNC2(pi, 0xa7, (0x1 << 6), 0);
		FUNC2(pi, 0x8f, (0x1 << 6), (0x1 << 6));
		FUNC2(pi, 0xa5, (0x1 << 6), (0x1 << 6));

		auxADC_Vmid = 0xA3;
		auxADC_Av = 0x0;
		FUNC9(pi, NPHY_TBL_ID_AFECTRL, 1, 0x0A, 16,
					 &auxADC_Vmid);
		FUNC9(pi, NPHY_TBL_ID_AFECTRL, 1, 0x0E, 16,
					 &auxADC_Av);

		FUNC5(3);

		FUNC6(pi, NPHY_RSSI_SEL_IQ, radio_temp, 1);
		FUNC11(pi, RADIO_2057_TEMPSENSE_CONFIG,
				tempsense_Rcal | 0x03);

		FUNC5(5);
		FUNC6(pi, NPHY_RSSI_SEL_IQ, radio_temp2, 1);

		auxADC_Av = 0x7;
		if (radio_temp[1] + radio_temp2[1] < -30) {
			auxADC_Vmid = 0x45;
			auxADC_Vl = 263;
		} else if (radio_temp[1] + radio_temp2[1] < -9) {
			auxADC_Vmid = 0x200;
			auxADC_Vl = 467;
		} else if (radio_temp[1] + radio_temp2[1] < 11) {
			auxADC_Vmid = 0x266;
			auxADC_Vl = 634;
		} else {
			auxADC_Vmid = 0x2D5;
			auxADC_Vl = 816;
		}

		FUNC9(pi, NPHY_TBL_ID_AFECTRL, 1, 0x0A, 16,
					 &auxADC_Vmid);
		FUNC9(pi, NPHY_TBL_ID_AFECTRL, 1, 0x0E, 16,
					 &auxADC_Av);

		FUNC5(3);

		FUNC6(pi, NPHY_RSSI_SEL_IQ, radio_temp2, 1);
		FUNC11(pi, RADIO_2057_TEMPSENSE_CONFIG,
				tempsense_Rcal | 0x01);

		FUNC5(5);
		FUNC6(pi, NPHY_RSSI_SEL_IQ, radio_temp, 1);

		FUNC11(pi, RADIO_2057_TEMPSENSE_CONFIG,
				syn_tempprocsense_save);

		FUNC10(pi, 0xa6, afectrlCore1_save);
		FUNC10(pi, 0xa7, afectrlCore2_save);
		FUNC10(pi, 0x8f, afectrlOverride_save);
		FUNC10(pi, 0xa5, afectrlOverride2_save);
		FUNC10(pi, 0x1ae, RSSIMultCoef0QPowerDet_save);
		FUNC10(pi, 0x346, RfctrlOverride5_save);
		FUNC10(pi, 0x347, RfctrlOverride6_save);
		FUNC10(pi, 0x344, RfctrlMiscReg5_save);
		FUNC10(pi, 0x345, RfctrlMiscReg5_save);

		FUNC9(pi, NPHY_TBL_ID_AFECTRL, 1, 0x0A, 16,
					 &auxADC_Vmid_save);
		FUNC9(pi, NPHY_TBL_ID_AFECTRL, 1, 0x0E, 16,
					 &auxADC_Av_save);
		FUNC9(pi, NPHY_TBL_ID_AFECTRL, 1, 0x02, 16,
					 &auxADC_rssi_ctrlL_save);
		FUNC9(pi, NPHY_TBL_ID_AFECTRL, 1, 0x03, 16,
					 &auxADC_rssi_ctrlH_save);

		if (pi->sh->chip == BCMA_CHIP_ID_BCM5357) {
			radio_temp[0] = (193 * (radio_temp[1] + radio_temp2[1])
					 + 88 * (auxADC_Vl) - 27111 +
					 128) / 256;
		} else {
			radio_temp[0] = (179 * (radio_temp[1] + radio_temp2[1])
					 + 82 * (auxADC_Vl) - 28861 +
					 128) / 256;
		}

		offset = (s16) pi->phy_tempsense_offset;

	} else if (FUNC0(pi->pubpi.phy_rev, 3)) {
		syn_tempprocsense_save =
			FUNC4(pi, RADIO_2056_SYN_TEMPPROCSENSE);

		afectrlCore1_save = FUNC3(pi, 0xa6);
		afectrlCore2_save = FUNC3(pi, 0xa7);
		afectrlOverride_save = FUNC3(pi, 0x8f);
		afectrlOverride2_save = FUNC3(pi, 0xa5);
		gpioSel_save = FUNC3(pi, 0xca);

		FUNC11(pi, RADIO_2056_SYN_TEMPPROCSENSE, 0x01);

		FUNC6(pi, NPHY_RSSI_SEL_IQ, radio_temp, 1);
		if (FUNC1(pi->pubpi.phy_rev, 7))
			FUNC11(pi, RADIO_2056_SYN_TEMPPROCSENSE, 0x05);

		FUNC6(pi, NPHY_RSSI_SEL_IQ, radio_temp2, 1);
		if (FUNC0(pi->pubpi.phy_rev, 7))
			FUNC11(pi, RADIO_2057_TEMPSENSE_CONFIG, 0x01);
		else
			FUNC11(pi, RADIO_2056_SYN_TEMPPROCSENSE, 0x01);

		radio_temp[0] =
			(126 * (radio_temp[1] + radio_temp2[1]) + 3987) / 64;

		FUNC11(pi, RADIO_2056_SYN_TEMPPROCSENSE,
				syn_tempprocsense_save);

		FUNC10(pi, 0xca, gpioSel_save);
		FUNC10(pi, 0xa6, afectrlCore1_save);
		FUNC10(pi, 0xa7, afectrlCore2_save);
		FUNC10(pi, 0x8f, afectrlOverride_save);
		FUNC10(pi, 0xa5, afectrlOverride2_save);

		offset = (s16) pi->phy_tempsense_offset;
	} else {

		pwrdet_rxtx_core1_save =
			FUNC4(pi, RADIO_2055_PWRDET_RXTX_CORE1);
		pwrdet_rxtx_core2_save =
			FUNC4(pi, RADIO_2055_PWRDET_RXTX_CORE2);
		core1_txrf_iqcal1_save =
			FUNC4(pi, RADIO_2055_CORE1_TXRF_IQCAL1);
		core1_txrf_iqcal2_save =
			FUNC4(pi, RADIO_2055_CORE1_TXRF_IQCAL2);
		core2_txrf_iqcal1_save =
			FUNC4(pi, RADIO_2055_CORE2_TXRF_IQCAL1);
		core2_txrf_iqcal2_save =
			FUNC4(pi, RADIO_2055_CORE2_TXRF_IQCAL2);
		pd_pll_ts_save = FUNC4(pi, RADIO_2055_PD_PLL_TS);

		afectrlCore1_save = FUNC3(pi, 0xa6);
		afectrlCore2_save = FUNC3(pi, 0xa7);
		afectrlOverride_save = FUNC3(pi, 0xa5);
		gpioSel_save = FUNC3(pi, 0xca);

		FUNC11(pi, RADIO_2055_CORE1_TXRF_IQCAL1, 0x01);
		FUNC11(pi, RADIO_2055_CORE2_TXRF_IQCAL1, 0x01);
		FUNC11(pi, RADIO_2055_CORE1_TXRF_IQCAL2, 0x08);
		FUNC11(pi, RADIO_2055_CORE2_TXRF_IQCAL2, 0x08);
		FUNC11(pi, RADIO_2055_PWRDET_RXTX_CORE1, 0x04);
		FUNC11(pi, RADIO_2055_PWRDET_RXTX_CORE2, 0x04);
		FUNC11(pi, RADIO_2055_PD_PLL_TS, 0x00);

		FUNC6(pi, NPHY_RSSI_SEL_IQ, radio_temp, 1);
		FUNC12(pi, RADIO_2055_CAL_TS, 0x80);

		FUNC6(pi, NPHY_RSSI_SEL_IQ, radio_temp, 1);
		FUNC12(pi, RADIO_2055_CAL_TS, 0x80);

		FUNC6(pi, NPHY_RSSI_SEL_IQ, radio_temp2, 1);
		FUNC12(pi, RADIO_2055_CAL_TS, 0x80);

		radio_temp[0] = (radio_temp[0] + radio_temp2[0]);
		radio_temp[1] = (radio_temp[1] + radio_temp2[1]);
		radio_temp[2] = (radio_temp[2] + radio_temp2[2]);
		radio_temp[3] = (radio_temp[3] + radio_temp2[3]);

		radio_temp[0] =
			(radio_temp[0] + radio_temp[1] + radio_temp[2] +
			 radio_temp[3]);

		radio_temp[0] =
			(radio_temp[0] +
			 (8 * 32)) * (950 - 350) / 63 + (350 * 8);

		radio_temp[0] = (radio_temp[0] - (8 * 420)) / 38;

		FUNC11(pi, RADIO_2055_PWRDET_RXTX_CORE1,
				pwrdet_rxtx_core1_save);
		FUNC11(pi, RADIO_2055_PWRDET_RXTX_CORE2,
				pwrdet_rxtx_core2_save);
		FUNC11(pi, RADIO_2055_CORE1_TXRF_IQCAL1,
				core1_txrf_iqcal1_save);
		FUNC11(pi, RADIO_2055_CORE2_TXRF_IQCAL1,
				core2_txrf_iqcal1_save);
		FUNC11(pi, RADIO_2055_CORE1_TXRF_IQCAL2,
				core1_txrf_iqcal2_save);
		FUNC11(pi, RADIO_2055_CORE2_TXRF_IQCAL2,
				core2_txrf_iqcal2_save);
		FUNC11(pi, RADIO_2055_PD_PLL_TS, pd_pll_ts_save);

		FUNC10(pi, 0xca, gpioSel_save);
		FUNC10(pi, 0xa6, afectrlCore1_save);
		FUNC10(pi, 0xa7, afectrlCore2_save);
		FUNC10(pi, 0xa5, afectrlOverride_save);
	}

	return (s16) radio_temp[0] + offset;
}