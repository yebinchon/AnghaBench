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
struct sk_buff {int len; } ;
struct pcpu_dstats {int tx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_pkts; } ;
struct net_device {TYPE_1__* dstats; } ;
typedef  scalar_t__ netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  tx_drps; } ;

/* Variables and functions */
 scalar_t__ NET_XMIT_CN ; 
 scalar_t__ NET_XMIT_SUCCESS ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pcpu_dstats* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb, struct net_device *dev)
{
	int len = skb->len;
	netdev_tx_t ret = FUNC0(skb, dev);

	if (FUNC1(ret == NET_XMIT_SUCCESS || ret == NET_XMIT_CN)) {
		struct pcpu_dstats *dstats = FUNC3(dev->dstats);

		FUNC4(&dstats->syncp);
		dstats->tx_pkts++;
		dstats->tx_bytes += len;
		FUNC5(&dstats->syncp);
	} else {
		FUNC2(dev->dstats->tx_drps);
	}

	return ret;
}