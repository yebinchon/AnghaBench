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
struct sk_buff {int /*<<< orphan*/  queue_mapping; struct net_device* dev; } ;
struct net_failover_info {int /*<<< orphan*/  standby_dev; int /*<<< orphan*/  primary_dev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  slave_dev_queue_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_failover_info* FUNC3 (struct net_device*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb,
					   struct net_device *dev)
{
	struct net_failover_info *nfo_info = FUNC3(dev);
	struct net_device *xmit_dev;

	/* Try xmit via primary netdev followed by standby netdev */
	xmit_dev = FUNC5(nfo_info->primary_dev);
	if (!xmit_dev || !FUNC2(xmit_dev)) {
		xmit_dev = FUNC5(nfo_info->standby_dev);
		if (!xmit_dev || !FUNC2(xmit_dev))
			return FUNC1(skb, dev);
	}

	skb->dev = xmit_dev;
	skb->queue_mapping = FUNC4(skb)->slave_dev_queue_mapping;

	return FUNC0(skb);
}