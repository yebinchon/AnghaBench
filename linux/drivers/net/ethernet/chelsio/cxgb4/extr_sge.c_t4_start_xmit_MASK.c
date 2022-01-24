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
struct port_info {int eth_flags; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int PRIV_FLAG_PORT_TX_VM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 struct port_info* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int) ; 

netdev_tx_t FUNC4(struct sk_buff *skb, struct net_device *dev)
{
	struct port_info *pi = FUNC2(dev);

	if (FUNC3(pi->eth_flags & PRIV_FLAG_PORT_TX_VM))
		return FUNC1(skb, dev);

	return FUNC0(skb, dev);
}