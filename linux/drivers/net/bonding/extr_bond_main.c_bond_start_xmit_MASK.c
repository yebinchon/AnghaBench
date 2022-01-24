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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bonding {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC1 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct bonding* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb, struct net_device *dev)
{
	struct bonding *bond = FUNC4(dev);
	netdev_tx_t ret = NETDEV_TX_OK;

	/* If we risk deadlock from transmitting this in the
	 * netpoll path, tell netpoll to queue the frame for later tx
	 */
	if (FUNC7(FUNC3(dev)))
		return NETDEV_TX_BUSY;

	FUNC5();
	if (FUNC1(bond))
		ret = FUNC0(skb, dev);
	else
		FUNC2(dev, skb);
	FUNC6();

	return ret;
}