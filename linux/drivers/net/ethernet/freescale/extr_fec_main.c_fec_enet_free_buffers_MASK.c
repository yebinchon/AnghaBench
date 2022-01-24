#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {unsigned int num_rx_queues; unsigned int num_tx_queues; struct fec_enet_priv_tx_q** tx_queue; scalar_t__ rx_align; TYPE_1__* pdev; struct fec_enet_priv_rx_q** rx_queue; } ;
struct TYPE_5__ {unsigned int ring_size; struct bufdesc* base; } ;
struct fec_enet_priv_tx_q {struct sk_buff** tx_skbuff; int /*<<< orphan*/ ** tx_bounce; TYPE_2__ bd; } ;
struct TYPE_6__ {unsigned int ring_size; struct bufdesc* base; } ;
struct fec_enet_priv_rx_q {TYPE_3__ bd; struct sk_buff** rx_skbuff; } ;
struct bufdesc {int /*<<< orphan*/  cbd_bufaddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ FEC_ENET_RX_FRSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bufdesc* FUNC3 (struct bufdesc*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fec_enet_private* FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC5(ndev);
	unsigned int i;
	struct sk_buff *skb;
	struct bufdesc	*bdp;
	struct fec_enet_priv_tx_q *txq;
	struct fec_enet_priv_rx_q *rxq;
	unsigned int q;

	for (q = 0; q < fep->num_rx_queues; q++) {
		rxq = fep->rx_queue[q];
		bdp = rxq->bd.base;
		for (i = 0; i < rxq->bd.ring_size; i++) {
			skb = rxq->rx_skbuff[i];
			rxq->rx_skbuff[i] = NULL;
			if (skb) {
				FUNC1(&fep->pdev->dev,
						 FUNC2(bdp->cbd_bufaddr),
						 FEC_ENET_RX_FRSIZE - fep->rx_align,
						 DMA_FROM_DEVICE);
				FUNC0(skb);
			}
			bdp = FUNC3(bdp, &rxq->bd);
		}
	}

	for (q = 0; q < fep->num_tx_queues; q++) {
		txq = fep->tx_queue[q];
		bdp = txq->bd.base;
		for (i = 0; i < txq->bd.ring_size; i++) {
			FUNC4(txq->tx_bounce[i]);
			txq->tx_bounce[i] = NULL;
			skb = txq->tx_skbuff[i];
			txq->tx_skbuff[i] = NULL;
			FUNC0(skb);
		}
	}
}