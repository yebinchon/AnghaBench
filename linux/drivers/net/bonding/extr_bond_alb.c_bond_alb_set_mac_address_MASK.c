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
struct sockaddr_storage {int /*<<< orphan*/  __data; } ;
struct slave {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; } ;
struct TYPE_2__ {scalar_t__ rlb_enabled; } ;
struct bonding {TYPE_1__ alb_info; int /*<<< orphan*/  curr_active_slave; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (struct bonding*,struct slave*,struct slave*) ; 
 int /*<<< orphan*/  FUNC1 (struct slave*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bonding*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct slave*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct slave*,struct slave*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct slave* FUNC6 (struct bonding*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct bonding* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct bonding*,struct slave*) ; 
 struct slave* FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct net_device *bond_dev, void *addr)
{
	struct bonding *bond = FUNC8(bond_dev);
	struct sockaddr_storage *ss = addr;
	struct slave *curr_active;
	struct slave *swap_slave;
	int res;

	if (!FUNC7(ss->__data))
		return -EADDRNOTAVAIL;

	res = FUNC2(bond, addr);
	if (res)
		return res;

	FUNC5(bond_dev->dev_addr, ss->__data, bond_dev->addr_len);

	/* If there is no curr_active_slave there is nothing else to do.
	 * Otherwise we'll need to pass the new address to it and handle
	 * duplications.
	 */
	curr_active = FUNC10(bond->curr_active_slave);
	if (!curr_active)
		return 0;

	swap_slave = FUNC6(bond, bond_dev->dev_addr);

	if (swap_slave) {
		FUNC4(swap_slave, curr_active);
		FUNC0(bond, swap_slave, curr_active);
	} else {
		FUNC3(curr_active, bond_dev->dev_addr,
				       bond_dev->addr_len);

		FUNC1(curr_active,
					  bond_dev->dev_addr, false);
		if (bond->alb_info.rlb_enabled) {
			/* inform clients mac address has changed */
			FUNC9(bond, curr_active);
		}
	}

	return 0;
}