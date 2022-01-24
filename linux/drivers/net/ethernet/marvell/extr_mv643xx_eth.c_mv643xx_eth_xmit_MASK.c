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
struct tx_queue {int tx_bytes; scalar_t__ tx_desc_count; scalar_t__ tx_stop_threshold; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_packets; } ;
struct sk_buff {int len; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct mv643xx_eth_private {struct tx_queue* txq; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 struct netdev_queue* FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*,char*) ; 
 struct mv643xx_eth_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*) ; 
 int FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct tx_queue*,struct sk_buff*,struct net_device*) ; 
 int FUNC10 (struct tx_queue*,struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC11(struct sk_buff *skb, struct net_device *dev)
{
	struct mv643xx_eth_private *mp = FUNC5(dev);
	int length, queue, ret;
	struct tx_queue *txq;
	struct netdev_queue *nq;

	queue = FUNC7(skb);
	txq = mp->txq + queue;
	nq = FUNC3(dev, queue);

	if (FUNC2(skb) && FUNC0(skb)) {
		FUNC4(KERN_DEBUG, dev,
			      "failed to linearize skb with tiny unaligned fragment\n");
		return NETDEV_TX_BUSY;
	}

	length = skb->len;

	if (FUNC8(skb))
		ret = FUNC10(txq, skb, dev);
	else
		ret = FUNC9(txq, skb, dev);
	if (!ret) {
		txq->tx_bytes += length;
		txq->tx_packets++;

		if (txq->tx_desc_count >= txq->tx_stop_threshold)
			FUNC6(nq);
	} else {
		txq->tx_dropped++;
		FUNC1(skb);
	}

	return NETDEV_TX_OK;
}