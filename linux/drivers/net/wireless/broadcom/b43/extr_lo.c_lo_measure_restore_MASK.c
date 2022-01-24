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
typedef  int u16 ;
struct lo_g_saved_values {int phy_pgactl; int phy_cck_2A; int phy_syncctl; int phy_dacctl; int radio_52; int phy_cck_30; int phy_cck_06; int phy_analogover; int phy_analogoverval; int phy_classctl; int phy_rfover; int phy_rfoverval; int phy_cck_3E; int phy_crs0; int phy_lo_mask; int phy_extg_01; int phy_dacctl_hwpctl; int phy_cck_14; int phy_hpwr_tssictl; int /*<<< orphan*/  old_channel; int /*<<< orphan*/  reg_3E2; int /*<<< orphan*/  radio_7A; int /*<<< orphan*/  radio_43; int /*<<< orphan*/  reg_3F4; } ;
struct b43_phy {int rev; scalar_t__ type; int radio_ver; int radio_rev; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_g {int pga_gain; } ;

/* Variables and functions */
 scalar_t__ B43_PHYTYPE_B ; 
 scalar_t__ B43_PHYTYPE_G ; 
 int /*<<< orphan*/  B43_PHY_ANALOGOVER ; 
 int /*<<< orphan*/  B43_PHY_ANALOGOVERVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B43_PHY_CLASSCTL ; 
 int /*<<< orphan*/  B43_PHY_CRS0 ; 
 int /*<<< orphan*/  B43_PHY_DACCTL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  B43_PHY_HPWR_TSSICTL ; 
 int /*<<< orphan*/  B43_PHY_LO_MASK ; 
 int /*<<< orphan*/  B43_PHY_PGACTL ; 
 int /*<<< orphan*/  B43_PHY_RFOVER ; 
 int /*<<< orphan*/  B43_PHY_RFOVERVAL ; 
 int /*<<< orphan*/  B43_PHY_SYNCCTL ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_phy*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct b43_wldev *dev,
			       struct lo_g_saved_values *sav)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	u16 tmp;

	if (phy->rev >= 2) {
		FUNC4(dev, B43_PHY_PGACTL, 0xE300);
		tmp = (gphy->pga_gain << 8);
		FUNC4(dev, B43_PHY_RFOVERVAL, tmp | 0xA0);
		FUNC9(5);
		FUNC4(dev, B43_PHY_RFOVERVAL, tmp | 0xA2);
		FUNC9(2);
		FUNC4(dev, B43_PHY_RFOVERVAL, tmp | 0xA3);
	} else {
		tmp = (gphy->pga_gain | 0xEFA0);
		FUNC4(dev, B43_PHY_PGACTL, tmp);
	}
	if (phy->type == B43_PHYTYPE_G) {
		if (phy->rev >= 3)
			FUNC4(dev, FUNC0(0x2E), 0xC078);
		else
			FUNC4(dev, FUNC0(0x2E), 0x8078);
		if (phy->rev >= 2)
			FUNC4(dev, FUNC0(0x2F), 0x0202);
		else
			FUNC4(dev, FUNC0(0x2F), 0x0101);
	}
	FUNC7(dev, 0x3F4, sav->reg_3F4);
	FUNC4(dev, B43_PHY_PGACTL, sav->phy_pgactl);
	FUNC4(dev, FUNC0(0x2A), sav->phy_cck_2A);
	FUNC4(dev, B43_PHY_SYNCCTL, sav->phy_syncctl);
	FUNC4(dev, B43_PHY_DACCTL, sav->phy_dacctl);
	FUNC6(dev, 0x43, sav->radio_43);
	FUNC6(dev, 0x7A, sav->radio_7A);
	if (!FUNC8(phy)) {
		tmp = sav->radio_52;
		FUNC5(dev, 0x52, 0xFF0F, tmp);
	}
	FUNC7(dev, 0x3E2, sav->reg_3E2);
	if (phy->type == B43_PHYTYPE_B &&
	    phy->radio_ver == 0x2050 && phy->radio_rev <= 5) {
		FUNC4(dev, FUNC0(0x30), sav->phy_cck_30);
		FUNC4(dev, FUNC0(0x06), sav->phy_cck_06);
	}
	if (phy->rev >= 2) {
		FUNC4(dev, B43_PHY_ANALOGOVER, sav->phy_analogover);
		FUNC4(dev, B43_PHY_ANALOGOVERVAL,
			      sav->phy_analogoverval);
		FUNC4(dev, B43_PHY_CLASSCTL, sav->phy_classctl);
		FUNC4(dev, B43_PHY_RFOVER, sav->phy_rfover);
		FUNC4(dev, B43_PHY_RFOVERVAL, sav->phy_rfoverval);
		FUNC4(dev, FUNC0(0x3E), sav->phy_cck_3E);
		FUNC4(dev, B43_PHY_CRS0, sav->phy_crs0);
	}
	if (FUNC3(dev)) {
		tmp = (sav->phy_lo_mask & 0xBFFF);
		FUNC4(dev, B43_PHY_LO_MASK, tmp);
		FUNC4(dev, FUNC1(0x01), sav->phy_extg_01);
		FUNC4(dev, B43_PHY_DACCTL, sav->phy_dacctl_hwpctl);
		FUNC4(dev, FUNC0(0x14), sav->phy_cck_14);
		FUNC4(dev, B43_PHY_HPWR_TSSICTL, sav->phy_hpwr_tssictl);
	}
	FUNC2(dev, sav->old_channel, 1);
}