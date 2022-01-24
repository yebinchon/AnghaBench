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
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {struct fec_enet_priv_tx_q** tx_queue; } ;
struct fec_enet_priv_tx_q {int tx_stop_threshold; } ;
typedef  int netdev_tx_t ;

/* Variables and functions */
 int NETDEV_TX_OK ; 
 int FUNC0 (struct fec_enet_priv_tx_q*) ; 
 int FUNC1 (struct fec_enet_priv_tx_q*,struct sk_buff*,struct net_device*) ; 
 int FUNC2 (struct fec_enet_priv_tx_q*,struct sk_buff*,struct net_device*) ; 
 struct netdev_queue* FUNC3 (struct net_device*,unsigned short) ; 
 struct fec_enet_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct netdev_queue*) ; 
 unsigned short FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t
FUNC8(struct sk_buff *skb, struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC4(ndev);
	int entries_free;
	unsigned short queue;
	struct fec_enet_priv_tx_q *txq;
	struct netdev_queue *nq;
	int ret;

	queue = FUNC6(skb);
	txq = fep->tx_queue[queue];
	nq = FUNC3(ndev, queue);

	if (FUNC7(skb))
		ret = FUNC2(txq, skb, ndev);
	else
		ret = FUNC1(txq, skb, ndev);
	if (ret)
		return ret;

	entries_free = FUNC0(txq);
	if (entries_free <= txq->tx_stop_threshold)
		FUNC5(nq);

	return NETDEV_TX_OK;
}