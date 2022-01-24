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
struct net_device {int /*<<< orphan*/  priv_flags; } ;
struct bonding {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DISABLE_NETPOLL ; 
 int FUNC0 (struct net_device*,struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC2 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct bonding* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *bond_dev,
				    struct net_device *slave_dev)
{
	struct bonding *bond = FUNC4(bond_dev);
	int ret;

	ret = FUNC0(bond_dev, slave_dev, false, true);
	if (ret == 0 && !FUNC1(bond)) {
		bond_dev->priv_flags |= IFF_DISABLE_NETPOLL;
		FUNC3(bond_dev, "Destroying bond\n");
		FUNC2(bond);
		FUNC5(bond_dev);
	}
	return ret;
}