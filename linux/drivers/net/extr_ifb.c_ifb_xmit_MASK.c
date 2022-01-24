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
struct sk_buff {int /*<<< orphan*/  skb_iif; int /*<<< orphan*/  tc_redirected; scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {scalar_t__ tx_queue_len; TYPE_1__ stats; } ;
struct ifb_q_private {int tasklet_pending; int /*<<< orphan*/  ifb_tasklet; int /*<<< orphan*/  rq; int /*<<< orphan*/  txqnum; int /*<<< orphan*/  rsync; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct ifb_dev_private {struct ifb_q_private* tx_private; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct ifb_dev_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC10(struct sk_buff *skb, struct net_device *dev)
{
	struct ifb_dev_private *dp = FUNC3(dev);
	struct ifb_q_private *txp = dp->tx_private + FUNC5(skb);

	FUNC8(&txp->rsync);
	txp->rx_packets++;
	txp->rx_bytes += skb->len;
	FUNC9(&txp->rsync);

	if (!skb->tc_redirected || !skb->skb_iif) {
		FUNC1(skb);
		dev->stats.rx_dropped++;
		return NETDEV_TX_OK;
	}

	if (FUNC6(&txp->rq) >= dev->tx_queue_len)
		FUNC4(FUNC2(dev, txp->txqnum));

	FUNC0(&txp->rq, skb);
	if (!txp->tasklet_pending) {
		txp->tasklet_pending = 1;
		FUNC7(&txp->ifb_tasklet);
	}

	return NETDEV_TX_OK;
}