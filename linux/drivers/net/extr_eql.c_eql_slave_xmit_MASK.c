#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  priority; struct net_device* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_8__ {int /*<<< orphan*/  bytes_queued; struct net_device* dev; } ;
typedef  TYPE_2__ slave_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {TYPE_6__ queue; } ;
typedef  TYPE_3__ equalizer_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  TC_PRIO_FILLER ; 
 TYPE_2__* FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 TYPE_3__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb, struct net_device *dev)
{
	equalizer_t *eql = FUNC3(dev);
	slave_t *slave;

	FUNC4(&eql->queue.lock);

	slave = FUNC0(&eql->queue);
	if (slave) {
		struct net_device *slave_dev = slave->dev;

		skb->dev = slave_dev;
		skb->priority = TC_PRIO_FILLER;
		slave->bytes_queued += skb->len;
		FUNC2(skb);
		dev->stats.tx_packets++;
	} else {
		dev->stats.tx_dropped++;
		FUNC1(skb);
	}

	FUNC5(&eql->queue.lock);

	return NETDEV_TX_OK;
}