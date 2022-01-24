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
struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int /*<<< orphan*/  dev; } ;
struct inet6_dev {int /*<<< orphan*/  addr_list; } ;
struct in_device {int /*<<< orphan*/  ifa_list; } ;

/* Variables and functions */
#define  NETDEV_DOWN 129 
#define  NETDEV_UP 128 
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 struct in_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static bool
FUNC5(struct mlxsw_sp_rif *rif, struct net_device *dev,
			   unsigned long event)
{
	struct inet6_dev *inet6_dev;
	bool addr_list_empty = true;
	struct in_device *idev;

	switch (event) {
	case NETDEV_UP:
		return rif == NULL;
	case NETDEV_DOWN:
		idev = FUNC1(dev);
		if (idev && idev->ifa_list)
			addr_list_empty = false;

		inet6_dev = FUNC0(dev);
		if (addr_list_empty && inet6_dev &&
		    !FUNC2(&inet6_dev->addr_list))
			addr_list_empty = false;

		/* macvlans do not have a RIF, but rather piggy back on the
		 * RIF of their lower device.
		 */
		if (FUNC4(dev) && addr_list_empty)
			return true;

		if (rif && addr_list_empty &&
		    !FUNC3(rif->dev))
			return true;
		/* It is possible we already removed the RIF ourselves
		 * if it was assigned to a netdev that is now a bridge
		 * or LAG slave.
		 */
		return false;
	}

	return false;
}