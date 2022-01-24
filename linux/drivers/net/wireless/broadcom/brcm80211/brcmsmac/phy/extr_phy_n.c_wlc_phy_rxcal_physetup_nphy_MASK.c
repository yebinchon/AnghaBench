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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; void** tx_rx_cal_phy_saveregs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID0 ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID1 ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID2 ; 
 int /*<<< orphan*/  NPHY_RFSEQ_RX2TX ; 
 int /*<<< orphan*/  NPHY_RfctrlIntc_override_PA ; 
 int /*<<< orphan*/  NPHY_RfctrlIntc_override_TRSW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PHY_CORE_0 ; 
 int RADIO_MIMO_CORESEL_CORE1 ; 
 int RADIO_MIMO_CORESEL_CORE2 ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int,int) ; 
 void* FUNC4 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC9(struct brcms_phy *pi, u8 rx_core)
{
	u8 tx_core;
	u16 rx_antval, tx_antval;

	if (FUNC1(pi->pubpi.phy_rev, 7))
		tx_core = rx_core;
	else
		tx_core = (rx_core == PHY_CORE_0) ? 1 : 0;

	pi->tx_rx_cal_phy_saveregs[0] = FUNC4(pi, 0xa2);
	pi->tx_rx_cal_phy_saveregs[1] =
		FUNC4(pi, (rx_core == PHY_CORE_0) ? 0xa6 : 0xa7);
	pi->tx_rx_cal_phy_saveregs[2] =
		FUNC4(pi, (rx_core == PHY_CORE_0) ? 0x8f : 0xa5);
	pi->tx_rx_cal_phy_saveregs[3] = FUNC4(pi, 0x91);
	pi->tx_rx_cal_phy_saveregs[4] = FUNC4(pi, 0x92);
	pi->tx_rx_cal_phy_saveregs[5] = FUNC4(pi, 0x7a);
	pi->tx_rx_cal_phy_saveregs[6] = FUNC4(pi, 0x7d);
	pi->tx_rx_cal_phy_saveregs[7] = FUNC4(pi, 0xe7);
	pi->tx_rx_cal_phy_saveregs[8] = FUNC4(pi, 0xec);
	if (FUNC1(pi->pubpi.phy_rev, 7)) {
		pi->tx_rx_cal_phy_saveregs[11] = FUNC4(pi, 0x342);
		pi->tx_rx_cal_phy_saveregs[12] = FUNC4(pi, 0x343);
		pi->tx_rx_cal_phy_saveregs[13] = FUNC4(pi, 0x346);
		pi->tx_rx_cal_phy_saveregs[14] = FUNC4(pi, 0x347);
	}

	pi->tx_rx_cal_phy_saveregs[9] = FUNC4(pi, 0x297);
	pi->tx_rx_cal_phy_saveregs[10] = FUNC4(pi, 0x29b);
	FUNC3(pi, (0 == PHY_CORE_0) ? 0x297 :
		    0x29b, (0x1 << 0), (0) << 0);

	FUNC3(pi, (1 == PHY_CORE_0) ? 0x297 :
		    0x29b, (0x1 << 0), (0) << 0);

	if (FUNC1(pi->pubpi.phy_rev, 7)) {

		FUNC3(pi, 0xa2, (0xf << 0), (1 << tx_core) << 0);

		FUNC3(pi, 0xa2, (0xf << 12), (1 << (1 - rx_core)) << 12);

	} else {

		FUNC3(pi, 0xa2, (0xf << 12), (1 << tx_core) << 12);
		FUNC3(pi, 0xa2, (0xf << 0), (1 << tx_core) << 0);
		FUNC3(pi, 0xa2, (0xf << 4), (1 << rx_core) << 4);
		FUNC3(pi, 0xa2, (0xf << 8), (1 << rx_core) << 8);
	}

	FUNC3(pi, ((rx_core == PHY_CORE_0) ? 0xa6 : 0xa7), (0x1 << 2), 0);
	FUNC3(pi, (rx_core == PHY_CORE_0) ? 0x8f : 0xa5,
		    (0x1 << 2), (0x1 << 2));
	if (FUNC2(pi->pubpi.phy_rev, 7)) {
		FUNC3(pi, ((rx_core == PHY_CORE_0) ? 0xa6 : 0xa7),
			    (0x1 << 0) | (0x1 << 1), 0);
		FUNC3(pi, (rx_core == PHY_CORE_0) ?
			    0x8f : 0xa5,
			    (0x1 << 0) | (0x1 << 1), (0x1 << 0) | (0x1 << 1));
	}

	FUNC8(pi, NPHY_RfctrlIntc_override_PA, 0,
					 RADIO_MIMO_CORESEL_CORE1 |
					 RADIO_MIMO_CORESEL_CORE2);

	if (FUNC1(pi->pubpi.phy_rev, 7)) {
		FUNC7(pi, (0x1 << 3),
						  0, 0, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);
		FUNC7(pi, (0x1 << 9), 0, 0, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 10), 1, 0, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 0), 1, 0, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 1), 1, 0, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID2);
		FUNC7(pi, (0x1 << 11), 0, 0, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		if (FUNC0(pi->radio_chanspec))
			FUNC7(
				pi,
				(0x1 << 7),
				2, 0, 0,
				NPHY_REV7_RFCTRLOVERRIDE_ID1);
		else
			FUNC7(
				pi,
				(0x1 << 7),
				0, 0, 0,
				NPHY_REV7_RFCTRLOVERRIDE_ID1);

		FUNC7(pi, (0x1 << 7),
						  0, 0, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 5), 0, 0, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
	} else {
		FUNC6(pi, (0x1 << 3), 0, 3, 0);
	}

	FUNC5(pi, NPHY_RFSEQ_RX2TX);

	if (FUNC1(pi->pubpi.phy_rev, 7)) {

		FUNC8(pi,
						 NPHY_RfctrlIntc_override_TRSW,
						 0x1, rx_core + 1);
	} else {

		if (rx_core == PHY_CORE_0) {
			rx_antval = 0x1;
			tx_antval = 0x8;
		} else {
			rx_antval = 0x4;
			tx_antval = 0x2;
		}

		FUNC8(pi,
						 NPHY_RfctrlIntc_override_TRSW,
						 rx_antval, rx_core + 1);
		FUNC8(pi,
						 NPHY_RfctrlIntc_override_TRSW,
						 tx_antval, tx_core + 1);
	}
}