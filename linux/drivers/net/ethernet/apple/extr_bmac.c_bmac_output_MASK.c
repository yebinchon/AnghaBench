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
struct bmac_data {int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct bmac_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t
FUNC3(struct sk_buff *skb, struct net_device *dev)
{
	struct bmac_data *bp = FUNC1(dev);
	FUNC2(bp->queue, skb);
	FUNC0(dev);
	return NETDEV_TX_OK;
}