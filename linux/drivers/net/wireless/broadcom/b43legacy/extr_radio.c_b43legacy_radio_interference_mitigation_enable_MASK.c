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
typedef  int u32 ;
typedef  int u16 ;
struct b43legacy_phy {int* interfstack; int rev; int aci_enable; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B43legacy_PHY_G_CRS ; 
 int B43legacy_PHY_RADIO_BITFIELD ; 
#define  B43legacy_RADIO_INTERFMODE_MANUALWLAN 129 
#define  B43legacy_RADIO_INTERFMODE_NONWLAN 128 
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int /*<<< orphan*/  B43legacy_UCODEFLAGS_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int,int) ; 
 int FUNC4 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int,int) ; 
 int FUNC6 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_wldev*,int,int) ; 
 int FUNC8 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void
FUNC14(struct b43legacy_wldev *dev,
					       int mode)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 tmp;
	u16 flipped;
	u32 tmp32;
	size_t stackidx = 0;
	u32 *stack = phy->interfstack;

	switch (mode) {
	case B43legacy_RADIO_INTERFMODE_NONWLAN:
		if (phy->rev != 1) {
			FUNC5(dev, 0x042B,
					    FUNC4(dev, 0x042B)
					    | 0x0800);
			FUNC5(dev, B43legacy_PHY_G_CRS,
					    FUNC4(dev,
					    B43legacy_PHY_G_CRS) & ~0x4000);
			break;
		}
		FUNC13(0x0078);
		tmp = (FUNC6(dev, 0x0078) & 0x001E);
		flipped = FUNC10(tmp);
		if (flipped < 10 && flipped >= 8)
			flipped = 7;
		else if (flipped >= 10)
			flipped -= 3;
		flipped = FUNC10(flipped);
		flipped = (flipped << 1) | 0x0020;
		FUNC7(dev, 0x0078, flipped);

		FUNC2(dev);

		FUNC12(0x0406);
		FUNC5(dev, 0x0406, 0x7E28);

		FUNC5(dev, 0x042B,
				    FUNC4(dev, 0x042B) | 0x0800);
		FUNC5(dev, B43legacy_PHY_RADIO_BITFIELD,
				    FUNC4(dev,
				    B43legacy_PHY_RADIO_BITFIELD) | 0x1000);

		FUNC12(0x04A0);
		FUNC5(dev, 0x04A0,
				    (FUNC4(dev, 0x04A0) & 0xC0C0)
				    | 0x0008);
		FUNC12(0x04A1);
		FUNC5(dev, 0x04A1,
				    (FUNC4(dev, 0x04A1) & 0xC0C0)
				    | 0x0605);
		FUNC12(0x04A2);
		FUNC5(dev, 0x04A2,
				    (FUNC4(dev, 0x04A2) & 0xC0C0)
				    | 0x0204);
		FUNC12(0x04A8);
		FUNC5(dev, 0x04A8,
				    (FUNC4(dev, 0x04A8) & 0xC0C0)
				    | 0x0803);
		FUNC12(0x04AB);
		FUNC5(dev, 0x04AB,
				    (FUNC4(dev, 0x04AB) & 0xC0C0)
				    | 0x0605);

		FUNC12(0x04A7);
		FUNC5(dev, 0x04A7, 0x0002);
		FUNC12(0x04A3);
		FUNC5(dev, 0x04A3, 0x287A);
		FUNC12(0x04A9);
		FUNC5(dev, 0x04A9, 0x2027);
		FUNC12(0x0493);
		FUNC5(dev, 0x0493, 0x32F5);
		FUNC12(0x04AA);
		FUNC5(dev, 0x04AA, 0x2027);
		FUNC12(0x04AC);
		FUNC5(dev, 0x04AC, 0x32F5);
		break;
	case B43legacy_RADIO_INTERFMODE_MANUALWLAN:
		if (FUNC4(dev, 0x0033) & 0x0800)
			break;

		phy->aci_enable = true;

		FUNC12(B43legacy_PHY_RADIO_BITFIELD);
		FUNC12(B43legacy_PHY_G_CRS);
		if (phy->rev < 2)
			FUNC12(0x0406);
		else {
			FUNC12(0x04C0);
			FUNC12(0x04C1);
		}
		FUNC12(0x0033);
		FUNC12(0x04A7);
		FUNC12(0x04A3);
		FUNC12(0x04A9);
		FUNC12(0x04AA);
		FUNC12(0x04AC);
		FUNC12(0x0493);
		FUNC12(0x04A1);
		FUNC12(0x04A0);
		FUNC12(0x04A2);
		FUNC12(0x048A);
		FUNC12(0x04A8);
		FUNC12(0x04AB);
		if (phy->rev == 2) {
			FUNC12(0x04AD);
			FUNC12(0x04AE);
		} else if (phy->rev >= 3) {
			FUNC12(0x04AD);
			FUNC12(0x0415);
			FUNC12(0x0416);
			FUNC12(0x0417);
			FUNC11(0x1A00 + 0x2);
			FUNC11(0x1A00 + 0x3);
		}
		FUNC12(0x042B);
		FUNC12(0x048C);

		FUNC5(dev, B43legacy_PHY_RADIO_BITFIELD,
				    FUNC4(dev,
				    B43legacy_PHY_RADIO_BITFIELD) & ~0x1000);
		FUNC5(dev, B43legacy_PHY_G_CRS,
				    (FUNC4(dev,
				    B43legacy_PHY_G_CRS)
				    & 0xFFFC) | 0x0002);

		FUNC5(dev, 0x0033, 0x0800);
		FUNC5(dev, 0x04A3, 0x2027);
		FUNC5(dev, 0x04A9, 0x1CA8);
		FUNC5(dev, 0x0493, 0x287A);
		FUNC5(dev, 0x04AA, 0x1CA8);
		FUNC5(dev, 0x04AC, 0x287A);

		FUNC5(dev, 0x04A0,
				    (FUNC4(dev, 0x04A0)
				    & 0xFFC0) | 0x001A);
		FUNC5(dev, 0x04A7, 0x000D);

		if (phy->rev < 2)
			FUNC5(dev, 0x0406, 0xFF0D);
		else if (phy->rev == 2) {
			FUNC5(dev, 0x04C0, 0xFFFF);
			FUNC5(dev, 0x04C1, 0x00A9);
		} else {
			FUNC5(dev, 0x04C0, 0x00C1);
			FUNC5(dev, 0x04C1, 0x0059);
		}

		FUNC5(dev, 0x04A1,
				    (FUNC4(dev, 0x04A1)
				    & 0xC0FF) | 0x1800);
		FUNC5(dev, 0x04A1,
				    (FUNC4(dev, 0x04A1)
				    & 0xFFC0) | 0x0015);
		FUNC5(dev, 0x04A8,
				    (FUNC4(dev, 0x04A8)
				    & 0xCFFF) | 0x1000);
		FUNC5(dev, 0x04A8,
				    (FUNC4(dev, 0x04A8)
				    & 0xF0FF) | 0x0A00);
		FUNC5(dev, 0x04AB,
				    (FUNC4(dev, 0x04AB)
				    & 0xCFFF) | 0x1000);
		FUNC5(dev, 0x04AB,
				    (FUNC4(dev, 0x04AB)
				    & 0xF0FF) | 0x0800);
		FUNC5(dev, 0x04AB,
				    (FUNC4(dev, 0x04AB)
				    & 0xFFCF) | 0x0010);
		FUNC5(dev, 0x04AB,
				    (FUNC4(dev, 0x04AB)
				    & 0xFFF0) | 0x0005);
		FUNC5(dev, 0x04A8,
				    (FUNC4(dev, 0x04A8)
				    & 0xFFCF) | 0x0010);
		FUNC5(dev, 0x04A8,
				    (FUNC4(dev, 0x04A8)
				    & 0xFFF0) | 0x0006);
		FUNC5(dev, 0x04A2,
				    (FUNC4(dev, 0x04A2)
				    & 0xF0FF) | 0x0800);
		FUNC5(dev, 0x04A0,
				    (FUNC4(dev, 0x04A0)
				    & 0xF0FF) | 0x0500);
		FUNC5(dev, 0x04A2,
				    (FUNC4(dev, 0x04A2)
				    & 0xFFF0) | 0x000B);

		if (phy->rev >= 3) {
			FUNC5(dev, 0x048A,
					    FUNC4(dev, 0x048A)
					    & ~0x8000);
			FUNC5(dev, 0x0415,
					    (FUNC4(dev, 0x0415)
					    & 0x8000) | 0x36D8);
			FUNC5(dev, 0x0416,
					    (FUNC4(dev, 0x0416)
					    & 0x8000) | 0x36D8);
			FUNC5(dev, 0x0417,
					    (FUNC4(dev, 0x0417)
					    & 0xFE00) | 0x016D);
		} else {
			FUNC5(dev, 0x048A,
					    FUNC4(dev, 0x048A)
					    | 0x1000);
			FUNC5(dev, 0x048A,
					    (FUNC4(dev, 0x048A)
					    & 0x9FFF) | 0x2000);
			tmp32 = FUNC8(dev, B43legacy_SHM_SHARED,
					    B43legacy_UCODEFLAGS_OFFSET);
			if (!(tmp32 & 0x800)) {
				tmp32 |= 0x800;
				FUNC9(dev, B43legacy_SHM_SHARED,
					    B43legacy_UCODEFLAGS_OFFSET,
					    tmp32);
			}
		}
		if (phy->rev >= 2)
			FUNC5(dev, 0x042B,
					    FUNC4(dev, 0x042B)
					    | 0x0800);
		FUNC5(dev, 0x048C,
				    (FUNC4(dev, 0x048C)
				    & 0xF0FF) | 0x0200);
		if (phy->rev == 2) {
			FUNC5(dev, 0x04AE,
					    (FUNC4(dev, 0x04AE)
					    & 0xFF00) | 0x007F);
			FUNC5(dev, 0x04AD,
					    (FUNC4(dev, 0x04AD)
					    & 0x00FF) | 0x1300);
		} else if (phy->rev >= 6) {
			FUNC3(dev, 0x1A00 + 0x3, 0x007F);
			FUNC3(dev, 0x1A00 + 0x2, 0x007F);
			FUNC5(dev, 0x04AD,
					    FUNC4(dev, 0x04AD)
					    & 0x00FF);
		}
		FUNC1(dev);
		break;
	default:
		FUNC0(1);
	}
}