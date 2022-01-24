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
struct phy_device {TYPE_1__* drv; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  state_queue; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (struct phy_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 struct phy_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct phy_device *phydev = FUNC5(dev);

	FUNC0(&phydev->state_queue);

	FUNC1(&phydev->lock);
	phydev->state = PHY_DOWN;
	FUNC2(&phydev->lock);

	if (phydev->drv && phydev->drv->remove) {
		phydev->drv->remove(phydev);

		/* Assert the reset signal */
		FUNC3(phydev, 1);
	}
	phydev->drv = NULL;

	return 0;
}