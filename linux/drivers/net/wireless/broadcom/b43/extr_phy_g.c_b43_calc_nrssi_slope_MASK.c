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
struct b43_phy {scalar_t__ type; int radio_rev; int rev; int /*<<< orphan*/  channel; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_g {int nrssislope; int* nrssi; } ;
typedef  int s16 ;

/* Variables and functions */
 int B43_MMIO_CHANNEL_EXT ; 
 scalar_t__ B43_PHYTYPE_G ; 
 int B43_PHY_G_CRS ; 
 int B43_PHY_G_LO_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int,int) ; 
 int FUNC6 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int,int) ; 
 int FUNC10 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int,int) ; 
 int FUNC13 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC16 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__attribute__((used)) static void FUNC19(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	u16 backup[18] = { 0 };
	u16 tmp;
	s16 nrssi0, nrssi1;

	FUNC0(phy->type != B43_PHYTYPE_G);

	if (phy->radio_rev >= 9)
		return;
	if (phy->radio_rev == 8)
		FUNC1(dev);

	FUNC4(dev, B43_PHY_G_CRS, 0x7FFF);
	FUNC4(dev, 0x0802, 0xFFFC);
	backup[7] = FUNC13(dev, 0x03E2);
	FUNC17(dev, 0x03E2, FUNC13(dev, 0x03E2) | 0x8000);
	backup[0] = FUNC10(dev, 0x007A);
	backup[1] = FUNC10(dev, 0x0052);
	backup[2] = FUNC10(dev, 0x0043);
	backup[3] = FUNC6(dev, 0x0015);
	backup[4] = FUNC6(dev, 0x005A);
	backup[5] = FUNC6(dev, 0x0059);
	backup[6] = FUNC6(dev, 0x0058);
	backup[8] = FUNC13(dev, 0x03E6);
	backup[9] = FUNC13(dev, B43_MMIO_CHANNEL_EXT);
	if (phy->rev >= 3) {
		backup[10] = FUNC6(dev, 0x002E);
		backup[11] = FUNC6(dev, 0x002F);
		backup[12] = FUNC6(dev, 0x080F);
		backup[13] = FUNC6(dev, B43_PHY_G_LO_CONTROL);
		backup[14] = FUNC6(dev, 0x0801);
		backup[15] = FUNC6(dev, 0x0060);
		backup[16] = FUNC6(dev, 0x0014);
		backup[17] = FUNC6(dev, 0x0478);
		FUNC8(dev, 0x002E, 0);
		FUNC8(dev, B43_PHY_G_LO_CONTROL, 0);
		switch (phy->rev) {
		case 4:
		case 6:
		case 7:
			FUNC7(dev, 0x0478, 0x0100);
			FUNC7(dev, 0x0801, 0x0040);
			break;
		case 3:
		case 5:
			FUNC4(dev, 0x0801, 0xFFBF);
			break;
		}
		FUNC7(dev, 0x0060, 0x0040);
		FUNC7(dev, 0x0014, 0x0200);
	}
	FUNC11(dev, 0x007A, 0x0070);
	FUNC14(dev, 0, 8, 0);
	FUNC9(dev, 0x007A, 0x00F7);
	if (phy->rev >= 2) {
		FUNC5(dev, 0x0811, 0xFFCF, 0x0030);
		FUNC5(dev, 0x0812, 0xFFCF, 0x0010);
	}
	FUNC11(dev, 0x007A, 0x0080);
	FUNC18(20);

	nrssi0 = (s16) ((FUNC6(dev, 0x047F) >> 8) & 0x003F);
	if (nrssi0 >= 0x0020)
		nrssi0 -= 0x0040;

	FUNC9(dev, 0x007A, 0x007F);
	if (phy->rev >= 2) {
		FUNC5(dev, 0x0003, 0xFF9F, 0x0040);
	}

	FUNC17(dev, B43_MMIO_CHANNEL_EXT,
		    FUNC13(dev, B43_MMIO_CHANNEL_EXT)
		    | 0x2000);
	FUNC11(dev, 0x007A, 0x000F);
	FUNC8(dev, 0x0015, 0xF330);
	if (phy->rev >= 2) {
		FUNC5(dev, 0x0812, 0xFFCF, 0x0020);
		FUNC5(dev, 0x0811, 0xFFCF, 0x0020);
	}

	FUNC14(dev, 3, 0, 1);
	if (phy->radio_rev == 8) {
		FUNC12(dev, 0x0043, 0x001F);
	} else {
		tmp = FUNC10(dev, 0x0052) & 0xFF0F;
		FUNC12(dev, 0x0052, tmp | 0x0060);
		tmp = FUNC10(dev, 0x0043) & 0xFFF0;
		FUNC12(dev, 0x0043, tmp | 0x0009);
	}
	FUNC8(dev, 0x005A, 0x0480);
	FUNC8(dev, 0x0059, 0x0810);
	FUNC8(dev, 0x0058, 0x000D);
	FUNC18(20);
	nrssi1 = (s16) ((FUNC6(dev, 0x047F) >> 8) & 0x003F);
	if (nrssi1 >= 0x0020)
		nrssi1 -= 0x0040;
	if (nrssi0 == nrssi1)
		gphy->nrssislope = 0x00010000;
	else
		gphy->nrssislope = 0x00400000 / (nrssi0 - nrssi1);
	if (nrssi0 >= -4) {
		gphy->nrssi[0] = nrssi1;
		gphy->nrssi[1] = nrssi0;
	}
	if (phy->rev >= 3) {
		FUNC8(dev, 0x002E, backup[10]);
		FUNC8(dev, 0x002F, backup[11]);
		FUNC8(dev, 0x080F, backup[12]);
		FUNC8(dev, B43_PHY_G_LO_CONTROL, backup[13]);
	}
	if (phy->rev >= 2) {
		FUNC4(dev, 0x0812, 0xFFCF);
		FUNC4(dev, 0x0811, 0xFFCF);
	}

	FUNC12(dev, 0x007A, backup[0]);
	FUNC12(dev, 0x0052, backup[1]);
	FUNC12(dev, 0x0043, backup[2]);
	FUNC17(dev, 0x03E2, backup[7]);
	FUNC17(dev, 0x03E6, backup[8]);
	FUNC17(dev, B43_MMIO_CHANNEL_EXT, backup[9]);
	FUNC8(dev, 0x0015, backup[3]);
	FUNC8(dev, 0x005A, backup[4]);
	FUNC8(dev, 0x0059, backup[5]);
	FUNC8(dev, 0x0058, backup[6]);
	FUNC16(dev, phy->channel);
	FUNC7(dev, 0x0802, (0x0001 | 0x0002));
	FUNC15(dev);
	FUNC7(dev, B43_PHY_G_CRS, 0x8000);
	if (phy->rev >= 3) {
		FUNC8(dev, 0x0801, backup[14]);
		FUNC8(dev, 0x0060, backup[15]);
		FUNC8(dev, 0x0014, backup[16]);
		FUNC8(dev, 0x0478, backup[17]);
	}
	FUNC3(dev);
	FUNC2(dev);
}