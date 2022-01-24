#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct b43_phy {int rev; } ;
struct b43_wldev {TYPE_2__* dev; struct b43_phy phy; } ;
struct TYPE_4__ {TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {int boardflags_lo; } ;

/* Variables and functions */
 int B43_BFL_PACTRL ; 
 int /*<<< orphan*/  B43_PHY_ENCORE ; 
 int B43_PHY_ENCORE_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;

	FUNC6();

	if (phy->rev >= 6) {
		if (FUNC3(dev, B43_PHY_ENCORE) & B43_PHY_ENCORE_EN)
			FUNC4(dev, B43_PHY_ENCORE, 0x0010);
		else
			FUNC1(dev, B43_PHY_ENCORE, ~0x1010);
	}

	FUNC5(dev);

	if (dev->dev->bus_sprom->boardflags_lo & B43_BFL_PACTRL)
		FUNC2(dev, FUNC0(0x6E), 0xE000, 0x3CF);
}