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
struct sk_buff {scalar_t__ len; } ;
struct pcpu_dstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int /*<<< orphan*/  dstats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct pcpu_dstats* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC5(struct sk_buff *skb, struct net_device *dev)
{
	struct pcpu_dstats *dstats = FUNC2(dev->dstats);

	FUNC3(&dstats->syncp);
	dstats->tx_packets++;
	dstats->tx_bytes += skb->len;
	FUNC4(&dstats->syncp);

	FUNC1(skb);
	FUNC0(skb);
	return NETDEV_TX_OK;
}