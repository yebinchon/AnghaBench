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
 int /*<<< orphan*/  B43_OFDMTAB_LPFGAIN ; 
 int B43_PHY_LNAHPFCTL ; 
 int /*<<< orphan*/  B43_PHY_LPFGAINCTL ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 

void FUNC5(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;

	FUNC3(dev, B43_PHY_LNAHPFCTL, 0x1FF9);
	FUNC1(dev, B43_PHY_LPFGAINCTL, 0xFF0F);
	if (phy->rev <= 2)
		FUNC0(dev, B43_OFDMTAB_LPFGAIN, 0, 0x1FBF);
	FUNC4(dev, 0x0002, 0x1FBF);

	FUNC3(dev, 0x0024, 0x4680);
	FUNC3(dev, 0x0020, 0x0003);
	FUNC3(dev, 0x001D, 0x0F40);
	FUNC3(dev, 0x001F, 0x1C00);
	if (phy->rev <= 3)
		FUNC2(dev, 0x002A, 0x00FF, 0x0400);
	else if (phy->rev == 5) {
		FUNC2(dev, 0x002A, 0x00FF, 0x1A00);
		FUNC3(dev, 0x00CC, 0x2121);
	}
	if (phy->rev >= 3)
		FUNC3(dev, 0x00BA, 0x3ED5);
}