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
struct net_device {TYPE_1__* phydev; } ;
struct TYPE_2__ {scalar_t__ autoneg; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,...) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(struct net_device *net_dev)
{
	int err;

	if (!net_dev->phydev) {
		FUNC0(net_dev, "phy device not initialized\n");
		return -ENODEV;
	}

	err = 0;
	if (net_dev->phydev->autoneg) {
		err = FUNC1(net_dev->phydev);
		if (err < 0)
			FUNC0(net_dev, "phy_start_aneg() = %d\n",
				   err);
	}

	return err;
}