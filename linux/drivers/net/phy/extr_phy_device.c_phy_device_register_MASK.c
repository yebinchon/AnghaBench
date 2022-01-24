#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct phy_device {TYPE_1__ mdio; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int) ; 
 int FUNC4 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,char*) ; 

int FUNC6(struct phy_device *phydev)
{
	int err;

	err = FUNC1(&phydev->mdio);
	if (err)
		return err;

	/* Deassert the reset signal */
	FUNC3(phydev, 0);

	/* Run all of the fixups for this PHY */
	err = FUNC4(phydev);
	if (err) {
		FUNC5(phydev, "failed to initialize\n");
		goto out;
	}

	err = FUNC0(&phydev->mdio.dev);
	if (err) {
		FUNC5(phydev, "failed to add\n");
		goto out;
	}

	return 0;

 out:
	/* Assert the reset signal */
	FUNC3(phydev, 1);

	FUNC2(&phydev->mdio);
	return err;
}