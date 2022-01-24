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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {scalar_t__ writes_counter; TYPE_1__* ops; } ;
struct b43_wldev {TYPE_2__ phy; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {void (* phy_write ) (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ B43_MAX_WRITES_IN_ROW ; 
 int /*<<< orphan*/  B43_MMIO_PHY_CONTROL ; 
 int /*<<< orphan*/  B43_MMIO_PHY_DATA ; 
 int /*<<< orphan*/  B43_MMIO_PHY_VER ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct b43_wldev *dev, u16 reg, u16 value)
{
	FUNC0(dev);
	if (FUNC1(dev->dev) &&
	    ++dev->phy.writes_counter > B43_MAX_WRITES_IN_ROW) {
		FUNC2(dev, B43_MMIO_PHY_VER);
		dev->phy.writes_counter = 1;
	}

	if (dev->phy.ops->phy_write)
		return dev->phy.ops->phy_write(dev, reg, value);

	FUNC4(dev, B43_MMIO_PHY_CONTROL, reg);
	FUNC3(dev, B43_MMIO_PHY_DATA, value);
}