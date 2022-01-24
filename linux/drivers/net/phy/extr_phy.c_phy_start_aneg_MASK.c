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
struct phy_device {scalar_t__ autoneg; int /*<<< orphan*/  lock; int /*<<< orphan*/  drv; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*) ; 
 scalar_t__ FUNC4 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*) ; 

int FUNC6(struct phy_device *phydev)
{
	int err;

	if (!phydev->drv)
		return -EIO;

	FUNC0(&phydev->lock);

	if (AUTONEG_DISABLE == phydev->autoneg)
		FUNC5(phydev);

	err = FUNC3(phydev);
	if (err < 0)
		goto out_unlock;

	if (FUNC4(phydev))
		err = FUNC2(phydev);
out_unlock:
	FUNC1(&phydev->lock);

	return err;
}