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
struct phy_device {TYPE_1__* drv; scalar_t__ link; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* config_intr ) (struct phy_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MII_STAT1000 ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 scalar_t__ FUNC3 (struct phy_device*) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	int err;
	int regval;

	err = FUNC1(phydev);
	if (err)
		return err;

	/* Make sure the PHY is not broken. Read idle error count,
	 * and reset the PHY if it is maxed out.
	 */
	regval = FUNC4(phydev, MII_STAT1000);
	if ((regval & 0xFF) == 0xFF) {
		FUNC2(phydev);
		phydev->link = 0;
		if (phydev->drv->config_intr && FUNC3(phydev))
			phydev->drv->config_intr(phydev);
		return FUNC0(phydev);
	}

	return 0;
}