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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  queue_mapping; } ;
struct net_failover_info {int /*<<< orphan*/  primary_dev; } ;
struct net_device_ops {int /*<<< orphan*/  (* ndo_select_queue ) (struct net_device*,struct sk_buff*,struct net_device*) ;} ;
struct net_device {int /*<<< orphan*/  real_num_tx_queues; struct net_device_ops* netdev_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  slave_dev_queue_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct net_failover_info* FUNC1 (struct net_device*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static u16 FUNC8(struct net_device *dev,
				     struct sk_buff *skb,
				     struct net_device *sb_dev)
{
	struct net_failover_info *nfo_info = FUNC1(dev);
	struct net_device *primary_dev;
	u16 txq;

	primary_dev = FUNC3(nfo_info->primary_dev);
	if (primary_dev) {
		const struct net_device_ops *ops = primary_dev->netdev_ops;

		if (ops->ndo_select_queue)
			txq = ops->ndo_select_queue(primary_dev, skb, sb_dev);
		else
			txq = FUNC0(primary_dev, skb, NULL);

		FUNC2(skb)->slave_dev_queue_mapping = skb->queue_mapping;

		return txq;
	}

	txq = FUNC5(skb) ? FUNC4(skb) : 0;

	/* Save the original txq to restore before passing to the driver */
	FUNC2(skb)->slave_dev_queue_mapping = skb->queue_mapping;

	if (FUNC7(txq >= dev->real_num_tx_queues)) {
		do {
			txq -= dev->real_num_tx_queues;
		} while (txq >= dev->real_num_tx_queues);
	}

	return txq;
}