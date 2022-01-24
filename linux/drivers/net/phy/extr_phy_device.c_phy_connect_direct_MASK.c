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
struct phy_device {int /*<<< orphan*/  dev_flags; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct net_device*,struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,void (*) (struct net_device*)) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 

int FUNC4(struct net_device *dev, struct phy_device *phydev,
		       void (*handler)(struct net_device *),
		       phy_interface_t interface)
{
	int rc;

	if (!dev)
		return -EINVAL;

	rc = FUNC0(dev, phydev, phydev->dev_flags, interface);
	if (rc)
		return rc;

	FUNC2(phydev, handler);
	if (FUNC1(phydev))
		FUNC3(phydev);

	return 0;
}