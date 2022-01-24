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
struct slave {int /*<<< orphan*/  dev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bonding {int /*<<< orphan*/  slave_arr; } ;
struct bond_up_slave {struct slave** arr; int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sk_buff*) ; 
 unsigned int FUNC3 (struct bonding*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 struct bonding* FUNC5 (struct net_device*) ; 
 struct bond_up_slave* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb,
				     struct net_device *dev)
{
	struct bonding *bond = FUNC5(dev);
	struct slave *slave;
	struct bond_up_slave *slaves;
	unsigned int count;

	slaves = FUNC6(bond->slave_arr);
	count = slaves ? FUNC0(slaves->count) : 0;
	if (FUNC4(count)) {
		slave = slaves->arr[FUNC3(bond, skb) % count];
		FUNC1(bond, skb, slave->dev);
	} else {
		FUNC2(dev, skb);
	}

	return NETDEV_TX_OK;
}