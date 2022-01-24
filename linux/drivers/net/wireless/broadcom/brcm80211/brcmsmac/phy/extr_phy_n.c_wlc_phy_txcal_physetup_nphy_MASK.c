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
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int* tx_rx_cal_phy_saveregs; int /*<<< orphan*/  radio_chanspec; TYPE_1__ pubpi; int /*<<< orphan*/  internal_tx_iqlo_cal_tapoff_intpa_nphy; scalar_t__ use_int_tx_iqlo_cal_nphy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID0 ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID1 ; 
 int /*<<< orphan*/  NPHY_RfctrlIntc_override_PA ; 
 int /*<<< orphan*/  NPHY_RfctrlIntc_override_TRSW ; 
 int /*<<< orphan*/  NPHY_TBL_ID_AFECTRL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int PHY_CORE_0 ; 
 int /*<<< orphan*/  RADIO_2057_IPA5G_CASCOFFV_PU_CORE0 ; 
 int /*<<< orphan*/  RADIO_2057_IPA5G_CASCOFFV_PU_CORE1 ; 
 int /*<<< orphan*/  RADIO_2057_OVR_REG0 ; 
 int /*<<< orphan*/  RADIO_2057_PAD2G_TUNE_PUS_CORE0 ; 
 int /*<<< orphan*/  RADIO_2057_PAD2G_TUNE_PUS_CORE1 ; 
 int RADIO_MIMO_CORESEL_CORE1 ; 
 int RADIO_MIMO_CORESEL_CORE2 ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC6 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC13(struct brcms_phy *pi)
{
	u16 val, mask;

	if (FUNC2(pi->pubpi.phy_rev, 3)) {
		pi->tx_rx_cal_phy_saveregs[0] = FUNC6(pi, 0xa6);
		pi->tx_rx_cal_phy_saveregs[1] = FUNC6(pi, 0xa7);

		mask = ((0x3 << 8) | (0x3 << 10));
		val = (0x2 << 8);
		val |= (0x2 << 10);
		FUNC4(pi, 0xa6, mask, val);
		FUNC4(pi, 0xa7, mask, val);

		val = FUNC6(pi, 0x8f);
		pi->tx_rx_cal_phy_saveregs[2] = val;
		val |= ((0x1 << 9) | (0x1 << 10));
		FUNC12(pi, 0x8f, val);

		val = FUNC6(pi, 0xa5);
		pi->tx_rx_cal_phy_saveregs[3] = val;
		val |= ((0x1 << 9) | (0x1 << 10));
		FUNC12(pi, 0xa5, val);

		pi->tx_rx_cal_phy_saveregs[4] = FUNC6(pi, 0x01);
		FUNC4(pi, 0x01, (0x1 << 15), 0);

		FUNC10(pi, NPHY_TBL_ID_AFECTRL, 1, 3, 16,
					&val);
		pi->tx_rx_cal_phy_saveregs[5] = val;
		val = 0;
		FUNC11(pi, NPHY_TBL_ID_AFECTRL, 1, 3, 16,
					 &val);

		FUNC10(pi, NPHY_TBL_ID_AFECTRL, 1, 19, 16,
					&val);
		pi->tx_rx_cal_phy_saveregs[6] = val;
		val = 0;
		FUNC11(pi, NPHY_TBL_ID_AFECTRL, 1, 19, 16,
					 &val);

		pi->tx_rx_cal_phy_saveregs[7] = FUNC6(pi, 0x91);
		pi->tx_rx_cal_phy_saveregs[8] = FUNC6(pi, 0x92);

		if (!(pi->use_int_tx_iqlo_cal_nphy))
			FUNC9(
				pi,
				NPHY_RfctrlIntc_override_PA,
				1,
				RADIO_MIMO_CORESEL_CORE1
				|
				RADIO_MIMO_CORESEL_CORE2);
		else
			FUNC9(
				pi,
				NPHY_RfctrlIntc_override_PA,
				0,
				RADIO_MIMO_CORESEL_CORE1
				|
				RADIO_MIMO_CORESEL_CORE2);

		FUNC9(pi,
						 NPHY_RfctrlIntc_override_TRSW,
						 0x2, RADIO_MIMO_CORESEL_CORE1);
		FUNC9(pi,
						 NPHY_RfctrlIntc_override_TRSW,
						 0x8, RADIO_MIMO_CORESEL_CORE2);

		pi->tx_rx_cal_phy_saveregs[9] = FUNC6(pi, 0x297);
		pi->tx_rx_cal_phy_saveregs[10] = FUNC6(pi, 0x29b);
		FUNC4(pi, (0 == PHY_CORE_0) ? 0x297 :
			    0x29b, (0x1 << 0), (0) << 0);

		FUNC4(pi, (1 == PHY_CORE_0) ? 0x297 :
			    0x29b, (0x1 << 0), (0) << 0);

		if (FUNC3(pi->pubpi.phy_rev, 7)
		    || FUNC2(pi->pubpi.phy_rev, 8))
			FUNC8(
				pi, (0x1 << 7),
				FUNC7
					(pi,
					0), 0, 0,
				NPHY_REV7_RFCTRLOVERRIDE_ID1);

		if (pi->use_int_tx_iqlo_cal_nphy
		    && !(pi->internal_tx_iqlo_cal_tapoff_intpa_nphy)) {

			if (FUNC3(pi->pubpi.phy_rev, 7)) {

				FUNC5(pi, RADIO_2057_OVR_REG0, 1 << 4,
					      1 << 4);

				if (FUNC0(pi->radio_chanspec)) {
					FUNC5(
						pi,
						RADIO_2057_PAD2G_TUNE_PUS_CORE0,
						1, 0);
					FUNC5(
						pi,
						RADIO_2057_PAD2G_TUNE_PUS_CORE1,
						1, 0);
				} else {
					FUNC5(
					     pi,
					     RADIO_2057_IPA5G_CASCOFFV_PU_CORE0,
					     1, 0);
					FUNC5(
					     pi,
					     RADIO_2057_IPA5G_CASCOFFV_PU_CORE1,
					     1, 0);
				}
			} else if (FUNC2(pi->pubpi.phy_rev, 8)) {
				FUNC8(
					pi,
					(0x1 << 3), 0,
					0x3, 0,
					NPHY_REV7_RFCTRLOVERRIDE_ID0);
			}
		}
	} else {
		pi->tx_rx_cal_phy_saveregs[0] = FUNC6(pi, 0xa6);
		pi->tx_rx_cal_phy_saveregs[1] = FUNC6(pi, 0xa7);

		mask = ((0x3 << 12) | (0x3 << 14));
		val = (0x2 << 12);
		val |= (0x2 << 14);
		FUNC4(pi, 0xa6, mask, val);
		FUNC4(pi, 0xa7, mask, val);

		val = FUNC6(pi, 0xa5);
		pi->tx_rx_cal_phy_saveregs[2] = val;
		val |= ((0x1 << 12) | (0x1 << 13));
		FUNC12(pi, 0xa5, val);

		FUNC10(pi, NPHY_TBL_ID_AFECTRL, 1, 2, 16,
					&val);
		pi->tx_rx_cal_phy_saveregs[3] = val;
		val |= 0x2000;
		FUNC11(pi, NPHY_TBL_ID_AFECTRL, 1, 2, 16,
					 &val);

		FUNC10(pi, NPHY_TBL_ID_AFECTRL, 1, 18, 16,
					&val);
		pi->tx_rx_cal_phy_saveregs[4] = val;
		val |= 0x2000;
		FUNC11(pi, NPHY_TBL_ID_AFECTRL, 1, 18, 16,
					 &val);

		pi->tx_rx_cal_phy_saveregs[5] = FUNC6(pi, 0x91);
		pi->tx_rx_cal_phy_saveregs[6] = FUNC6(pi, 0x92);
		val = FUNC1(pi->radio_chanspec) ? 0x180 : 0x120;
		FUNC12(pi, 0x91, val);
		FUNC12(pi, 0x92, val);
	}
}