#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct b43_phy {int rev; int radio_rev; struct b43_phy_g* g; } ;
struct b43_wldev {TYPE_2__* dev; struct b43_phy phy; } ;
struct TYPE_6__ {int att; } ;
struct b43_phy_g {int max_lb_gain; int trsw_rx_gain; TYPE_3__ bbatt; } ;
struct TYPE_5__ {TYPE_1__* bus_sprom; } ;
struct TYPE_4__ {int boardflags_lo; } ;

/* Variables and functions */
 int B43_BFL_EXTLNA ; 
 int /*<<< orphan*/  B43_PHY_ANALOGOVER ; 
 int /*<<< orphan*/  B43_PHY_ANALOGOVERVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B43_PHY_CCKBBANDCFG ; 
 int /*<<< orphan*/  B43_PHY_CRS0 ; 
 int /*<<< orphan*/  B43_PHY_LO_CTL ; 
 int /*<<< orphan*/  B43_PHY_LO_LEAKAGE ; 
 int /*<<< orphan*/  B43_PHY_LO_MASK ; 
 int /*<<< orphan*/  B43_PHY_PGACTL ; 
 int /*<<< orphan*/  B43_PHY_RFOVER ; 
 int /*<<< orphan*/  B43_PHY_RFOVERVAL ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int,int,int) ; 
 int FUNC9 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	u16 backup_phy[16] = { 0 };
	u16 backup_radio[3];
	u16 backup_bband;
	u16 i, j, loop_i_max;
	u16 trsw_rx;
	u16 loop1_outer_done, loop1_inner_done;

	backup_phy[0] = FUNC4(dev, B43_PHY_CRS0);
	backup_phy[1] = FUNC4(dev, B43_PHY_CCKBBANDCFG);
	backup_phy[2] = FUNC4(dev, B43_PHY_RFOVER);
	backup_phy[3] = FUNC4(dev, B43_PHY_RFOVERVAL);
	if (phy->rev != 1) {	/* Not in specs, but needed to prevent PPC machine check */
		backup_phy[4] = FUNC4(dev, B43_PHY_ANALOGOVER);
		backup_phy[5] = FUNC4(dev, B43_PHY_ANALOGOVERVAL);
	}
	backup_phy[6] = FUNC4(dev, FUNC0(0x5A));
	backup_phy[7] = FUNC4(dev, FUNC0(0x59));
	backup_phy[8] = FUNC4(dev, FUNC0(0x58));
	backup_phy[9] = FUNC4(dev, FUNC0(0x0A));
	backup_phy[10] = FUNC4(dev, FUNC0(0x03));
	backup_phy[11] = FUNC4(dev, B43_PHY_LO_MASK);
	backup_phy[12] = FUNC4(dev, B43_PHY_LO_CTL);
	backup_phy[13] = FUNC4(dev, FUNC0(0x2B));
	backup_phy[14] = FUNC4(dev, B43_PHY_PGACTL);
	backup_phy[15] = FUNC4(dev, B43_PHY_LO_LEAKAGE);
	backup_bband = gphy->bbatt.att;
	backup_radio[0] = FUNC9(dev, 0x52);
	backup_radio[1] = FUNC9(dev, 0x43);
	backup_radio[2] = FUNC9(dev, 0x7A);

	FUNC2(dev, B43_PHY_CRS0, 0x3FFF);
	FUNC5(dev, B43_PHY_CCKBBANDCFG, 0x8000);
	FUNC5(dev, B43_PHY_RFOVER, 0x0002);
	FUNC2(dev, B43_PHY_RFOVERVAL, 0xFFFD);
	FUNC5(dev, B43_PHY_RFOVER, 0x0001);
	FUNC2(dev, B43_PHY_RFOVERVAL, 0xFFFE);
	if (phy->rev != 1) {	/* Not in specs, but needed to prevent PPC machine check */
		FUNC5(dev, B43_PHY_ANALOGOVER, 0x0001);
		FUNC2(dev, B43_PHY_ANALOGOVERVAL, 0xFFFE);
		FUNC5(dev, B43_PHY_ANALOGOVER, 0x0002);
		FUNC2(dev, B43_PHY_ANALOGOVERVAL, 0xFFFD);
	}
	FUNC5(dev, B43_PHY_RFOVER, 0x000C);
	FUNC5(dev, B43_PHY_RFOVERVAL, 0x000C);
	FUNC5(dev, B43_PHY_RFOVER, 0x0030);
	FUNC3(dev, B43_PHY_RFOVERVAL, 0xFFCF, 0x10);

	FUNC6(dev, FUNC0(0x5A), 0x0780);
	FUNC6(dev, FUNC0(0x59), 0xC810);
	FUNC6(dev, FUNC0(0x58), 0x000D);

	FUNC5(dev, FUNC0(0x0A), 0x2000);
	if (phy->rev != 1) {	/* Not in specs, but needed to prevent PPC machine check */
		FUNC5(dev, B43_PHY_ANALOGOVER, 0x0004);
		FUNC2(dev, B43_PHY_ANALOGOVERVAL, 0xFFFB);
	}
	FUNC3(dev, FUNC0(0x03), 0xFF9F, 0x40);

	if (phy->radio_rev == 8) {
		FUNC10(dev, 0x43, 0x000F);
	} else {
		FUNC10(dev, 0x52, 0);
		FUNC8(dev, 0x43, 0xFFF0, 0x9);
	}
	FUNC1(dev, 11);

	if (phy->rev >= 3)
		FUNC6(dev, B43_PHY_LO_MASK, 0xC020);
	else
		FUNC6(dev, B43_PHY_LO_MASK, 0x8020);
	FUNC6(dev, B43_PHY_LO_CTL, 0);

	FUNC3(dev, FUNC0(0x2B), 0xFFC0, 0x01);
	FUNC3(dev, FUNC0(0x2B), 0xC0FF, 0x800);

	FUNC5(dev, B43_PHY_RFOVER, 0x0100);
	FUNC2(dev, B43_PHY_RFOVERVAL, 0xCFFF);

	if (dev->dev->bus_sprom->boardflags_lo & B43_BFL_EXTLNA) {
		if (phy->rev >= 7) {
			FUNC5(dev, B43_PHY_RFOVER, 0x0800);
			FUNC5(dev, B43_PHY_RFOVERVAL, 0x8000);
		}
	}
	FUNC7(dev, 0x7A, 0x00F7);

	j = 0;
	loop_i_max = (phy->radio_rev == 8) ? 15 : 9;
	for (i = 0; i < loop_i_max; i++) {
		for (j = 0; j < 16; j++) {
			FUNC10(dev, 0x43, i);
			FUNC3(dev, B43_PHY_RFOVERVAL, 0xF0FF, (j << 8));
			FUNC3(dev, B43_PHY_PGACTL, 0x0FFF, 0xA000);
			FUNC5(dev, B43_PHY_PGACTL, 0xF000);
			FUNC11(20);
			if (FUNC4(dev, B43_PHY_LO_LEAKAGE) >= 0xDFC)
				goto exit_loop1;
		}
	}
      exit_loop1:
	loop1_outer_done = i;
	loop1_inner_done = j;
	if (j >= 8) {
		FUNC5(dev, B43_PHY_RFOVERVAL, 0x30);
		trsw_rx = 0x1B;
		for (j = j - 8; j < 16; j++) {
			FUNC3(dev, B43_PHY_RFOVERVAL, 0xF0FF, (j << 8));
			FUNC3(dev, B43_PHY_PGACTL, 0x0FFF, 0xA000);
			FUNC5(dev, B43_PHY_PGACTL, 0xF000);
			FUNC11(20);
			trsw_rx -= 3;
			if (FUNC4(dev, B43_PHY_LO_LEAKAGE) >= 0xDFC)
				goto exit_loop2;
		}
	} else
		trsw_rx = 0x18;
      exit_loop2:

	if (phy->rev != 1) {	/* Not in specs, but needed to prevent PPC machine check */
		FUNC6(dev, B43_PHY_ANALOGOVER, backup_phy[4]);
		FUNC6(dev, B43_PHY_ANALOGOVERVAL, backup_phy[5]);
	}
	FUNC6(dev, FUNC0(0x5A), backup_phy[6]);
	FUNC6(dev, FUNC0(0x59), backup_phy[7]);
	FUNC6(dev, FUNC0(0x58), backup_phy[8]);
	FUNC6(dev, FUNC0(0x0A), backup_phy[9]);
	FUNC6(dev, FUNC0(0x03), backup_phy[10]);
	FUNC6(dev, B43_PHY_LO_MASK, backup_phy[11]);
	FUNC6(dev, B43_PHY_LO_CTL, backup_phy[12]);
	FUNC6(dev, FUNC0(0x2B), backup_phy[13]);
	FUNC6(dev, B43_PHY_PGACTL, backup_phy[14]);

	FUNC1(dev, backup_bband);

	FUNC10(dev, 0x52, backup_radio[0]);
	FUNC10(dev, 0x43, backup_radio[1]);
	FUNC10(dev, 0x7A, backup_radio[2]);

	FUNC6(dev, B43_PHY_RFOVER, backup_phy[2] | 0x0003);
	FUNC11(10);
	FUNC6(dev, B43_PHY_RFOVER, backup_phy[2]);
	FUNC6(dev, B43_PHY_RFOVERVAL, backup_phy[3]);
	FUNC6(dev, B43_PHY_CRS0, backup_phy[0]);
	FUNC6(dev, B43_PHY_CCKBBANDCFG, backup_phy[1]);

	gphy->max_lb_gain =
	    ((loop1_inner_done * 6) - (loop1_outer_done * 4)) - 11;
	gphy->trsw_rx_gain = trsw_rx * 2;
}