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
struct phy_device {int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_FIBRE_BIT ; 
 int /*<<< orphan*/  MII_MARVELL_COPPER_PAGE ; 
 int /*<<< orphan*/  MII_MARVELL_FIBER_PAGE ; 
 int FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int err;

	/* Suspend the fiber mode first */
	if (!FUNC1(ETHTOOL_LINK_MODE_FIBRE_BIT,
			       phydev->supported)) {
		err = FUNC2(phydev, MII_MARVELL_FIBER_PAGE);
		if (err < 0)
			goto error;

		/* With the page set, use the generic suspend */
		err = FUNC0(phydev);
		if (err < 0)
			goto error;

		/* Then, the copper link */
		err = FUNC2(phydev, MII_MARVELL_COPPER_PAGE);
		if (err < 0)
			goto error;
	}

	/* With the page set, use the generic suspend */
	return FUNC0(phydev);

error:
	FUNC2(phydev, MII_MARVELL_COPPER_PAGE);
	return err;
}