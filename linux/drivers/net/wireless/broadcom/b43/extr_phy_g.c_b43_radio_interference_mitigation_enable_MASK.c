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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct b43_phy {int rev; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_g {int aci_enable; int /*<<< orphan*/ * interfstack; } ;

/* Variables and functions */
 int B43_HF_ACIW ; 
#define  B43_INTERFMODE_MANUALWLAN 129 
#define  B43_INTERFMODE_NONWLAN 128 
 int B43_PHY_G_CRS ; 
 int B43_PHY_RADIO_BITFIELD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int,int) ; 
 int FUNC8 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int,int) ; 
 int FUNC11 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int,int) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static void
FUNC17(struct b43_wldev *dev, int mode)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	u16 tmp, flipped;
	size_t stackidx = 0;
	u32 *stack = gphy->interfstack;

	switch (mode) {
	case B43_INTERFMODE_NONWLAN:
		if (phy->rev != 1) {
			FUNC9(dev, 0x042B, 0x0800);
			FUNC6(dev, B43_PHY_G_CRS, ~0x4000);
			break;
		}
		FUNC16(0x0078);
		tmp = (FUNC11(dev, 0x0078) & 0x001E);
		FUNC0(tmp > 15);
		flipped = FUNC13(tmp);
		if (flipped < 10 && flipped >= 8)
			flipped = 7;
		else if (flipped >= 10)
			flipped -= 3;
		flipped = (FUNC13(flipped) << 1) | 0x0020;
		FUNC12(dev, 0x0078, flipped);

		FUNC2(dev);

		FUNC15(0x0406);
		FUNC10(dev, 0x0406, 0x7E28);

		FUNC9(dev, 0x042B, 0x0800);
		FUNC9(dev, B43_PHY_RADIO_BITFIELD, 0x1000);

		FUNC15(0x04A0);
		FUNC7(dev, 0x04A0, 0xC0C0, 0x0008);
		FUNC15(0x04A1);
		FUNC7(dev, 0x04A1, 0xC0C0, 0x0605);
		FUNC15(0x04A2);
		FUNC7(dev, 0x04A2, 0xC0C0, 0x0204);
		FUNC15(0x04A8);
		FUNC7(dev, 0x04A8, 0xC0C0, 0x0803);
		FUNC15(0x04AB);
		FUNC7(dev, 0x04AB, 0xC0C0, 0x0605);

		FUNC15(0x04A7);
		FUNC10(dev, 0x04A7, 0x0002);
		FUNC15(0x04A3);
		FUNC10(dev, 0x04A3, 0x287A);
		FUNC15(0x04A9);
		FUNC10(dev, 0x04A9, 0x2027);
		FUNC15(0x0493);
		FUNC10(dev, 0x0493, 0x32F5);
		FUNC15(0x04AA);
		FUNC10(dev, 0x04AA, 0x2027);
		FUNC15(0x04AC);
		FUNC10(dev, 0x04AC, 0x32F5);
		break;
	case B43_INTERFMODE_MANUALWLAN:
		if (FUNC8(dev, 0x0033) & 0x0800)
			break;

		gphy->aci_enable = true;

		FUNC15(B43_PHY_RADIO_BITFIELD);
		FUNC15(B43_PHY_G_CRS);
		if (phy->rev < 2) {
			FUNC15(0x0406);
		} else {
			FUNC15(0x04C0);
			FUNC15(0x04C1);
		}
		FUNC15(0x0033);
		FUNC15(0x04A7);
		FUNC15(0x04A3);
		FUNC15(0x04A9);
		FUNC15(0x04AA);
		FUNC15(0x04AC);
		FUNC15(0x0493);
		FUNC15(0x04A1);
		FUNC15(0x04A0);
		FUNC15(0x04A2);
		FUNC15(0x048A);
		FUNC15(0x04A8);
		FUNC15(0x04AB);
		if (phy->rev == 2) {
			FUNC15(0x04AD);
			FUNC15(0x04AE);
		} else if (phy->rev >= 3) {
			FUNC15(0x04AD);
			FUNC15(0x0415);
			FUNC15(0x0416);
			FUNC15(0x0417);
			FUNC14(0x1A00, 0x2);
			FUNC14(0x1A00, 0x3);
		}
		FUNC15(0x042B);
		FUNC15(0x048C);

		FUNC6(dev, B43_PHY_RADIO_BITFIELD, ~0x1000);
		FUNC7(dev, B43_PHY_G_CRS, 0xFFFC, 0x0002);

		FUNC10(dev, 0x0033, 0x0800);
		FUNC10(dev, 0x04A3, 0x2027);
		FUNC10(dev, 0x04A9, 0x1CA8);
		FUNC10(dev, 0x0493, 0x287A);
		FUNC10(dev, 0x04AA, 0x1CA8);
		FUNC10(dev, 0x04AC, 0x287A);

		FUNC7(dev, 0x04A0, 0xFFC0, 0x001A);
		FUNC10(dev, 0x04A7, 0x000D);

		if (phy->rev < 2) {
			FUNC10(dev, 0x0406, 0xFF0D);
		} else if (phy->rev == 2) {
			FUNC10(dev, 0x04C0, 0xFFFF);
			FUNC10(dev, 0x04C1, 0x00A9);
		} else {
			FUNC10(dev, 0x04C0, 0x00C1);
			FUNC10(dev, 0x04C1, 0x0059);
		}

		FUNC7(dev, 0x04A1, 0xC0FF, 0x1800);
		FUNC7(dev, 0x04A1, 0xFFC0, 0x0015);
		FUNC7(dev, 0x04A8, 0xCFFF, 0x1000);
		FUNC7(dev, 0x04A8, 0xF0FF, 0x0A00);
		FUNC7(dev, 0x04AB, 0xCFFF, 0x1000);
		FUNC7(dev, 0x04AB, 0xF0FF, 0x0800);
		FUNC7(dev, 0x04AB, 0xFFCF, 0x0010);
		FUNC7(dev, 0x04AB, 0xFFF0, 0x0005);
		FUNC7(dev, 0x04A8, 0xFFCF, 0x0010);
		FUNC7(dev, 0x04A8, 0xFFF0, 0x0006);
		FUNC7(dev, 0x04A2, 0xF0FF, 0x0800);
		FUNC7(dev, 0x04A0, 0xF0FF, 0x0500);
		FUNC7(dev, 0x04A2, 0xFFF0, 0x000B);

		if (phy->rev >= 3) {
			FUNC6(dev, 0x048A, 0x7FFF);
			FUNC7(dev, 0x0415, 0x8000, 0x36D8);
			FUNC7(dev, 0x0416, 0x8000, 0x36D8);
			FUNC7(dev, 0x0417, 0xFE00, 0x016D);
		} else {
			FUNC9(dev, 0x048A, 0x1000);
			FUNC7(dev, 0x048A, 0x9FFF, 0x2000);
			FUNC4(dev, FUNC3(dev) | B43_HF_ACIW);
		}
		if (phy->rev >= 2) {
			FUNC9(dev, 0x042B, 0x0800);
		}
		FUNC7(dev, 0x048C, 0xF0FF, 0x0200);
		if (phy->rev == 2) {
			FUNC7(dev, 0x04AE, 0xFF00, 0x007F);
			FUNC7(dev, 0x04AD, 0x00FF, 0x1300);
		} else if (phy->rev >= 6) {
			FUNC5(dev, 0x1A00, 0x3, 0x007F);
			FUNC5(dev, 0x1A00, 0x2, 0x007F);
			FUNC6(dev, 0x04AD, 0x00FF);
		}
		FUNC1(dev);
		break;
	default:
		FUNC0(1);
	}
}