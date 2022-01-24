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
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int core_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_CLASSCTL ; 
 int B43_NPHY_CLASSCTL_CCKEN ; 
 int B43_NPHY_CLASSCTL_OFDMEN ; 
 int B43_NPHY_CLASSCTL_WAITEDEN ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC4(struct b43_wldev *dev, u16 mask, u16 val)
{
	u16 tmp;

	if (dev->dev->core_rev == 16)
		FUNC1(dev);

	tmp = FUNC3(dev, B43_NPHY_CLASSCTL);
	tmp &= (B43_NPHY_CLASSCTL_CCKEN | B43_NPHY_CLASSCTL_OFDMEN |
		B43_NPHY_CLASSCTL_WAITEDEN);
	tmp &= ~mask;
	tmp |= (val & mask);
	FUNC2(dev, B43_NPHY_CLASSCTL, 0xFFF8, tmp);

	if (dev->dev->core_rev == 16)
		FUNC0(dev);

	return tmp;
}