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
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_TXF_40CO_B1S2 ; 
 int /*<<< orphan*/  B43_NPHY_TXF_40CO_B32S2 ; 
 scalar_t__ FUNC0 (struct b43_wldev*) ; 
 scalar_t__ FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev)
{
	u16 tmp;

	if (dev->phy.rev < 3 || dev->phy.rev >= 7)
		return;

	if (FUNC1(dev))
		tmp = FUNC0(dev) ? 5 : 4;
	else
		tmp = FUNC0(dev) ? 3 : 1;
	FUNC2(dev, B43_NPHY_TXF_40CO_B32S2,
		      (tmp << 9) | (tmp << 6) | (tmp << 3) | tmp);

	if (FUNC1(dev)) {
		tmp = FUNC0(dev) ? 4 : 1;
		FUNC2(dev, B43_NPHY_TXF_40CO_B1S2,
			      (tmp << 9) | (tmp << 6) | (tmp << 3) | tmp);
	}
}