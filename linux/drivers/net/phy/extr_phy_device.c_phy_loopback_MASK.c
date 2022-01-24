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
struct phy_driver {int (* set_loopback ) (struct phy_device*,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  driver; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct phy_device {int loopback_enabled; int /*<<< orphan*/  lock; scalar_t__ drv; TYPE_2__ mdio; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct phy_device*,int) ; 
 struct phy_driver* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct phy_device *phydev, bool enable)
{
	struct phy_driver *phydrv = FUNC3(phydev->mdio.dev.driver);
	int ret = 0;

	FUNC0(&phydev->lock);

	if (enable && phydev->loopback_enabled) {
		ret = -EBUSY;
		goto out;
	}

	if (!enable && !phydev->loopback_enabled) {
		ret = -EINVAL;
		goto out;
	}

	if (phydev->drv && phydrv->set_loopback)
		ret = phydrv->set_loopback(phydev, enable);
	else
		ret = -EOPNOTSUPP;

	if (ret)
		goto out;

	phydev->loopback_enabled = enable;

out:
	FUNC1(&phydev->lock);
	return ret;
}