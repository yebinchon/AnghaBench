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
struct net_device {int /*<<< orphan*/  addr_assign_type; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_CHANGEADDR ; 
 int /*<<< orphan*/  NET_ADDR_STOLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct net_device*,char*,struct net_device*,struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *bond_dev,
			     struct net_device *slave_dev)
{
	int err;

	FUNC3(bond_dev, slave_dev, "bond_dev=%p slave_dev=%p slave_dev->addr_len=%d\n",
		  bond_dev, slave_dev, slave_dev->addr_len);
	err = FUNC1(bond_dev, slave_dev->dev_addr, NULL);
	if (err)
		return err;

	FUNC2(bond_dev->dev_addr, slave_dev->dev_addr, slave_dev->addr_len);
	bond_dev->addr_assign_type = NET_ADDR_STOLEN;
	FUNC0(NETDEV_CHANGEADDR, bond_dev);
	return 0;
}