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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int bmcr;

	/* Software Reset PHY */
	bmcr = FUNC0(phydev, MII_BMCR);
	if (bmcr < 0)
		return bmcr;
	bmcr |= BMCR_RESET;
	bmcr = FUNC1(phydev, MII_BMCR, bmcr);
	if (bmcr < 0)
		return bmcr;

	do {
		bmcr = FUNC0(phydev, MII_BMCR);
		if (bmcr < 0)
			return bmcr;
	} while (bmcr & BMCR_RESET);

	return 0;
}