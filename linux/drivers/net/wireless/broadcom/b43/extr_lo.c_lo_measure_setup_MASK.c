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
struct ssb_sprom {int boardflags_lo; } ;
struct lo_g_saved_values {int reg_3F4; int reg_3E2; int radio_7A; int phy_syncctl; int radio_52; void* phy_cck_06; void* phy_cck_30; void* phy_dacctl; void* phy_cck_2A; void* phy_pgactl; void* radio_43; void* phy_crs0; void* phy_cck_3E; void* phy_classctl; void* phy_rfoverval; void* phy_rfover; void* phy_analogoverval; void* phy_analogover; void* phy_hpwr_tssictl; void* phy_cck_14; void* phy_dacctl_hwpctl; void* phy_extg_01; void* phy_lo_mask; } ;
struct b43_phy {scalar_t__ type; int radio_ver; int radio_rev; int rev; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; TYPE_1__* dev; } ;
struct b43_txpower_lo_control {int /*<<< orphan*/  txctl_measured_time; } ;
struct b43_phy_g {struct b43_txpower_lo_control* lo_control; } ;
struct TYPE_2__ {struct ssb_sprom* bus_sprom; } ;

/* Variables and functions */
 int B43_BFL_EXTLNA ; 
 scalar_t__ B43_LO_TXCTL_EXPIRE ; 
 scalar_t__ B43_PHYTYPE_B ; 
 scalar_t__ B43_PHYTYPE_G ; 
 int B43_PHY_ANALOGOVER ; 
 int B43_PHY_ANALOGOVERVAL ; 
 int FUNC0 (int) ; 
 int B43_PHY_CLASSCTL ; 
 int B43_PHY_CRS0 ; 
 int B43_PHY_DACCTL ; 
 int FUNC1 (int) ; 
 int B43_PHY_HPWR_TSSICTL ; 
 int B43_PHY_LO_MASK ; 
 int B43_PHY_PGACTL ; 
 int B43_PHY_RFOVER ; 
 int B43_PHY_RFOVERVAL ; 
 int B43_PHY_SYNCCTL ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int) ; 
 void* FUNC6 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int,int) ; 
 void* FUNC9 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int,int) ; 
 int FUNC11 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct b43_phy*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC16(struct b43_wldev *dev,
			     struct lo_g_saved_values *sav)
{
	struct ssb_sprom *sprom = dev->dev->bus_sprom;
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	struct b43_txpower_lo_control *lo = gphy->lo_control;
	u16 tmp;

	if (FUNC4(dev)) {
		sav->phy_lo_mask = FUNC6(dev, B43_PHY_LO_MASK);
		sav->phy_extg_01 = FUNC6(dev, FUNC1(0x01));
		sav->phy_dacctl_hwpctl = FUNC6(dev, B43_PHY_DACCTL);
		sav->phy_cck_14 = FUNC6(dev, FUNC0(0x14));
		sav->phy_hpwr_tssictl = FUNC6(dev, B43_PHY_HPWR_TSSICTL);

		FUNC7(dev, B43_PHY_HPWR_TSSICTL, 0x100);
		FUNC7(dev, FUNC1(0x01), 0x40);
		FUNC7(dev, B43_PHY_DACCTL, 0x40);
		FUNC7(dev, FUNC0(0x14), 0x200);
	}
	if (phy->type == B43_PHYTYPE_B &&
	    phy->radio_ver == 0x2050 && phy->radio_rev < 6) {
		FUNC8(dev, FUNC0(0x16), 0x410);
		FUNC8(dev, FUNC0(0x17), 0x820);
	}
	if (phy->rev >= 2) {
		sav->phy_analogover = FUNC6(dev, B43_PHY_ANALOGOVER);
		sav->phy_analogoverval =
		    FUNC6(dev, B43_PHY_ANALOGOVERVAL);
		sav->phy_rfover = FUNC6(dev, B43_PHY_RFOVER);
		sav->phy_rfoverval = FUNC6(dev, B43_PHY_RFOVERVAL);
		sav->phy_classctl = FUNC6(dev, B43_PHY_CLASSCTL);
		sav->phy_cck_3E = FUNC6(dev, FUNC0(0x3E));
		sav->phy_crs0 = FUNC6(dev, B43_PHY_CRS0);

		FUNC5(dev, B43_PHY_CLASSCTL, 0xFFFC);
		FUNC5(dev, B43_PHY_CRS0, 0x7FFF);
		FUNC7(dev, B43_PHY_ANALOGOVER, 0x0003);
		FUNC5(dev, B43_PHY_ANALOGOVERVAL, 0xFFFC);
		if (phy->type == B43_PHYTYPE_G) {
			if ((phy->rev >= 7) &&
			    (sprom->boardflags_lo & B43_BFL_EXTLNA)) {
				FUNC8(dev, B43_PHY_RFOVER, 0x933);
			} else {
				FUNC8(dev, B43_PHY_RFOVER, 0x133);
			}
		} else {
			FUNC8(dev, B43_PHY_RFOVER, 0);
		}
		FUNC8(dev, FUNC0(0x3E), 0);
	}
	sav->reg_3F4 = FUNC11(dev, 0x3F4);
	sav->reg_3E2 = FUNC11(dev, 0x3E2);
	sav->radio_43 = FUNC9(dev, 0x43);
	sav->radio_7A = FUNC9(dev, 0x7A);
	sav->phy_pgactl = FUNC6(dev, B43_PHY_PGACTL);
	sav->phy_cck_2A = FUNC6(dev, FUNC0(0x2A));
	sav->phy_syncctl = FUNC6(dev, B43_PHY_SYNCCTL);
	sav->phy_dacctl = FUNC6(dev, B43_PHY_DACCTL);

	if (!FUNC13(phy)) {
		sav->radio_52 = FUNC9(dev, 0x52);
		sav->radio_52 &= 0x00F0;
	}
	if (phy->type == B43_PHYTYPE_B) {
		sav->phy_cck_30 = FUNC6(dev, FUNC0(0x30));
		sav->phy_cck_06 = FUNC6(dev, FUNC0(0x06));
		FUNC8(dev, FUNC0(0x30), 0x00FF);
		FUNC8(dev, FUNC0(0x06), 0x3F3F);
	} else {
		FUNC12(dev, 0x3E2, FUNC11(dev, 0x3E2)
			    | 0x8000);
	}
	FUNC12(dev, 0x3F4, FUNC11(dev, 0x3F4)
		    & 0xF000);

	tmp =
	    (phy->type == B43_PHYTYPE_G) ? B43_PHY_LO_MASK : FUNC0(0x2E);
	FUNC8(dev, tmp, 0x007F);

	tmp = sav->phy_syncctl;
	FUNC8(dev, B43_PHY_SYNCCTL, tmp & 0xFF7F);
	tmp = sav->radio_7A;
	FUNC10(dev, 0x007A, tmp & 0xFFF0);

	FUNC8(dev, FUNC0(0x2A), 0x8A3);
	if (phy->type == B43_PHYTYPE_G ||
	    (phy->type == B43_PHYTYPE_B &&
	     phy->radio_ver == 0x2050 && phy->radio_rev >= 6)) {
		FUNC8(dev, FUNC0(0x2B), 0x1003);
	} else
		FUNC8(dev, FUNC0(0x2B), 0x0802);
	if (phy->rev >= 2)
		FUNC2(dev, false, true);
	FUNC3(dev, 6, 0);
	FUNC9(dev, 0x51);	/* dummy read */
	if (phy->type == B43_PHYTYPE_G)
		FUNC8(dev, FUNC0(0x2F), 0);

	/* Re-measure the txctl values, if needed. */
	if (FUNC15(lo->txctl_measured_time,
			jiffies - B43_LO_TXCTL_EXPIRE))
		FUNC14(dev);

	if (phy->type == B43_PHYTYPE_G && phy->rev >= 3) {
		FUNC8(dev, B43_PHY_LO_MASK, 0xC078);
	} else {
		if (phy->type == B43_PHYTYPE_B)
			FUNC8(dev, FUNC0(0x2E), 0x8078);
		else
			FUNC8(dev, B43_PHY_LO_MASK, 0x8078);
	}
}