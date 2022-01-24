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
struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_OFDMTAB_AGC1 ; 
 int /*<<< orphan*/  B43_OFDMTAB_AGC1_R1 ; 
 int /*<<< orphan*/  B43_OFDMTAB_AGC2 ; 
 int /*<<< orphan*/  B43_OFDMTAB_AGC3 ; 
 int /*<<< orphan*/  B43_OFDMTAB_AGC3_R1 ; 
 int /*<<< orphan*/  B43_PHY_ANTWRSETT ; 
 int /*<<< orphan*/  B43_PHY_CCKSHIFTBITS_WA ; 
 int /*<<< orphan*/  B43_PHY_DIVP1P2GAIN ; 
 int /*<<< orphan*/  B43_PHY_DIVSRCHIDX ; 
 int /*<<< orphan*/  B43_PHY_LMS ; 
 int /*<<< orphan*/  B43_PHY_LPFGAINCTL ; 
 int /*<<< orphan*/  B43_PHY_N1N2GAIN ; 
 int /*<<< orphan*/  B43_PHY_N1P1GAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B43_PHY_P1P2GAIN ; 
 int /*<<< orphan*/  B43_PHY_PEAK_COUNT ; 
 int /*<<< orphan*/  B43_PHY_VERSION_OFDM ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;

	if (phy->rev == 1) {
		FUNC1(dev, B43_OFDMTAB_AGC1_R1, 0, 254);
		FUNC1(dev, B43_OFDMTAB_AGC1_R1, 1, 13);
		FUNC1(dev, B43_OFDMTAB_AGC1_R1, 2, 19);
		FUNC1(dev, B43_OFDMTAB_AGC1_R1, 3, 25);
		FUNC1(dev, B43_OFDMTAB_AGC2, 0, 0x2710);
		FUNC1(dev, B43_OFDMTAB_AGC2, 1, 0x9B83);
		FUNC1(dev, B43_OFDMTAB_AGC2, 2, 0x9B83);
		FUNC1(dev, B43_OFDMTAB_AGC2, 3, 0x0F8D);
		FUNC5(dev, B43_PHY_LMS, 4);
	} else {
		FUNC1(dev, B43_OFDMTAB_AGC1, 0, 254);
		FUNC1(dev, B43_OFDMTAB_AGC1, 1, 13);
		FUNC1(dev, B43_OFDMTAB_AGC1, 2, 19);
		FUNC1(dev, B43_OFDMTAB_AGC1, 3, 25);
	}

	FUNC3(dev, B43_PHY_CCKSHIFTBITS_WA, 0x00FF, 0x5700);
	FUNC3(dev, FUNC0(0x1A), ~0x007F, 0x000F);
	FUNC3(dev, FUNC0(0x1A), ~0x3F80, 0x2B80);
	FUNC3(dev, B43_PHY_ANTWRSETT, 0xF0FF, 0x0300);
	FUNC6(dev, 0x7A, 0x0008);
	FUNC3(dev, B43_PHY_N1P1GAIN, ~0x000F, 0x0008);
	FUNC3(dev, B43_PHY_P1P2GAIN, ~0x0F00, 0x0600);
	FUNC3(dev, B43_PHY_N1N2GAIN, ~0x0F00, 0x0700);
	FUNC3(dev, B43_PHY_N1P1GAIN, ~0x0F00, 0x0100);
	if (phy->rev == 1) {
		FUNC3(dev, B43_PHY_N1N2GAIN, ~0x000F, 0x0007);
	}
	FUNC3(dev, FUNC0(0x88), ~0x00FF, 0x001C);
	FUNC3(dev, FUNC0(0x88), ~0x3F00, 0x0200);
	FUNC3(dev, FUNC0(0x96), ~0x00FF, 0x001C);
	FUNC3(dev, FUNC0(0x89), ~0x00FF, 0x0020);
	FUNC3(dev, FUNC0(0x89), ~0x3F00, 0x0200);
	FUNC3(dev, FUNC0(0x82), ~0x00FF, 0x002E);
	FUNC3(dev, FUNC0(0x96), 0x00FF, 0x1A00);
	FUNC3(dev, FUNC0(0x81), ~0x00FF, 0x0028);
	FUNC3(dev, FUNC0(0x81), 0x00FF, 0x2C00);
	if (phy->rev == 1) {
		FUNC5(dev, B43_PHY_PEAK_COUNT, 0x092B);
		FUNC3(dev, FUNC0(0x1B), ~0x001E, 0x0002);
	} else {
		FUNC2(dev, FUNC0(0x1B), ~0x001E);
		FUNC5(dev, FUNC0(0x1F), 0x287A);
		FUNC3(dev, B43_PHY_LPFGAINCTL, ~0x000F, 0x0004);
		if (phy->rev >= 6) {
			FUNC5(dev, FUNC0(0x22), 0x287A);
			FUNC3(dev, B43_PHY_LPFGAINCTL, 0x0FFF, 0x3000);
		}
	}
	FUNC3(dev, B43_PHY_DIVSRCHIDX, 0x8080, 0x7874);
	FUNC5(dev, FUNC0(0x8E), 0x1C00);
	if (phy->rev == 1) {
		FUNC3(dev, B43_PHY_DIVP1P2GAIN, ~0x0F00, 0x0600);
		FUNC5(dev, FUNC0(0x8B), 0x005E);
		FUNC3(dev, B43_PHY_ANTWRSETT, ~0x00FF, 0x001E);
		FUNC5(dev, FUNC0(0x8D), 0x0002);
		FUNC1(dev, B43_OFDMTAB_AGC3_R1, 0, 0);
		FUNC1(dev, B43_OFDMTAB_AGC3_R1, 1, 7);
		FUNC1(dev, B43_OFDMTAB_AGC3_R1, 2, 16);
		FUNC1(dev, B43_OFDMTAB_AGC3_R1, 3, 28);
	} else {
		FUNC1(dev, B43_OFDMTAB_AGC3, 0, 0);
		FUNC1(dev, B43_OFDMTAB_AGC3, 1, 7);
		FUNC1(dev, B43_OFDMTAB_AGC3, 2, 16);
		FUNC1(dev, B43_OFDMTAB_AGC3, 3, 28);
	}
	if (phy->rev >= 6) {
		FUNC2(dev, FUNC0(0x26), ~0x0003);
		FUNC2(dev, FUNC0(0x26), ~0x1000);
	}
	FUNC4(dev, B43_PHY_VERSION_OFDM); /* Dummy read */
}