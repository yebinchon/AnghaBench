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
typedef  size_t u8 ;
struct nphy_papd_restore_state {int mm; int /*<<< orphan*/ * afeoverride; int /*<<< orphan*/ * afectrl; int /*<<< orphan*/ * intpa_master; int /*<<< orphan*/ * fbmix; int /*<<< orphan*/ * vga_master; int /*<<< orphan*/ * atten; } ;
struct TYPE_2__ {size_t phy_corenum; int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTPAA_MASTER ; 
 int /*<<< orphan*/  INTPAG_MASTER ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID0 ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID1 ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 size_t PHY_CORE_0 ; 
 int /*<<< orphan*/  RADIO_2056 ; 
 int /*<<< orphan*/  RADIO_2057 ; 
 int /*<<< orphan*/  RX ; 
 int /*<<< orphan*/  TX ; 
 int /*<<< orphan*/  TXFBMIX_A ; 
 int /*<<< orphan*/  TXFBMIX_G ; 
 int /*<<< orphan*/  TXRXCOUPLE_2G_ATTEN ; 
 int /*<<< orphan*/  TXRXCOUPLE_2G_PWRUP ; 
 int /*<<< orphan*/  TXRXCOUPLE_5G_ATTEN ; 
 int /*<<< orphan*/  TXRXCOUPLE_5G_PWRUP ; 
 int /*<<< orphan*/  VGA_MASTER ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct brcms_phy *pi,
			      struct nphy_papd_restore_state *state)
{
	u8 core;

	FUNC8(pi);

	if (FUNC1(pi->pubpi.phy_rev, 7)) {

		for (core = 0; core < pi->pubpi.phy_corenum; core++) {

			if (FUNC0(pi->radio_chanspec)) {
				FUNC4(pi, RADIO_2057, TX, core,
						 TXRXCOUPLE_2G_PWRUP, 0);
				FUNC4(pi, RADIO_2057, TX, core,
						 TXRXCOUPLE_2G_ATTEN,
						 state->atten[core]);
			} else {
				FUNC4(pi, RADIO_2057, TX, core,
						 TXRXCOUPLE_5G_PWRUP, 0);
				FUNC4(pi, RADIO_2057, TX, core,
						 TXRXCOUPLE_5G_ATTEN,
						 state->atten[core]);
			}
		}

		if ((pi->pubpi.radiorev == 4) || (pi->pubpi.radiorev == 6))
			FUNC7(
				pi, (0x1 << 2),
				1, 0x3, 0,
				NPHY_REV7_RFCTRLOVERRIDE_ID0);
		else
			FUNC7(
				pi, (0x1 << 2),
				0, 0x3, 1,
				NPHY_REV7_RFCTRLOVERRIDE_ID0);

		FUNC7(pi, (0x1 << 1),
						  0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 0), 0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID2);
		FUNC7(pi, (0x1 << 2), 0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID2);
		FUNC7(pi, (0x1 << 11), 1, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 3), 0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);
		FUNC7(pi, (0x1 << 11), 0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);
		FUNC7(pi, (0x1 << 12), 0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);
		FUNC7(pi, (0x1 << 2), 1, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 0), 0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 1), 1, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID2);
		FUNC7(pi, (0x1 << 8), 0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 9), 1, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 10), 0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 3), 1, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 5), 0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC7(pi, (0x1 << 4), 0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);

		for (core = 0; core < pi->pubpi.phy_corenum; core++) {

			FUNC9(pi, (core == PHY_CORE_0) ?
				      0xa6 : 0xa7, state->afectrl[core]);
			FUNC9(pi, (core == PHY_CORE_0) ? 0x8f :
				      0xa5, state->afeoverride[core]);
		}

		FUNC5(pi, (state->mm >> 8) & 0xff,
					    (state->mm & 0xff));

		if (FUNC2(pi->pubpi.phy_rev, 7)
		    || FUNC1(pi->pubpi.phy_rev, 8))
			FUNC7(
				pi, (0x1 << 7), 0, 0,
				1,
				NPHY_REV7_RFCTRLOVERRIDE_ID1);
	} else {
		FUNC6(pi, (0x1 << 12), 0, 0x3, 1);
		FUNC6(pi, (0x1 << 13), 0, 0x3, 1);
		FUNC6(pi, (0x1 << 0), 0, 0x3, 1);

		FUNC6(pi, (0x1 << 2), 0, 0x3, 1);
		FUNC6(pi, (0x1 << 1), 0, 0x3, 1);

		for (core = 0; core < pi->pubpi.phy_corenum; core++) {

			FUNC3(pi, RADIO_2056, RX, core, VGA_MASTER,
					 state->vga_master[core]);
			if (FUNC0(pi->radio_chanspec)) {
				FUNC3(pi, RADIO_2056, RX, core,
						 TXFBMIX_G, state->fbmix[core]);
				FUNC3(pi, RADIO_2056, TX, core,
						 INTPAG_MASTER,
						 state->intpa_master[core]);
			} else {
				FUNC3(pi, RADIO_2056, RX, core,
						 TXFBMIX_A, state->fbmix[core]);
				FUNC3(pi, RADIO_2056, TX, core,
						 INTPAA_MASTER,
						 state->intpa_master[core]);
			}

			FUNC9(pi, (core == PHY_CORE_0) ?
				      0xa6 : 0xa7, state->afectrl[core]);
			FUNC9(pi, (core == PHY_CORE_0) ? 0x8f :
				      0xa5, state->afeoverride[core]);
		}

		FUNC5(pi, (state->mm >> 8) & 0xff,
					    (state->mm & 0xff));

		FUNC6(pi, (0x1 << 3), 0, 0x3, 1);
	}
}