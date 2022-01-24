#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct fec_enet_private {int num_tx_queues; int num_rx_queues; struct fec_enet_priv_tx_q** tx_queue; struct fec_enet_priv_tx_q** rx_queue; TYPE_1__* pdev; } ;
struct TYPE_4__ {int ring_size; } ;
struct fec_enet_priv_tx_q {int /*<<< orphan*/  tso_hdrs_dma; scalar_t__ tso_hdrs; TYPE_2__ bd; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int TSO_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fec_enet_priv_tx_q*) ; 
 struct fec_enet_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC2(ndev);
	int i;
	struct fec_enet_priv_tx_q *txq;

	for (i = 0; i < fep->num_tx_queues; i++)
		if (fep->tx_queue[i] && fep->tx_queue[i]->tso_hdrs) {
			txq = fep->tx_queue[i];
			FUNC0(&fep->pdev->dev,
					  txq->bd.ring_size * TSO_HEADER_SIZE,
					  txq->tso_hdrs,
					  txq->tso_hdrs_dma);
		}

	for (i = 0; i < fep->num_rx_queues; i++)
		FUNC1(fep->rx_queue[i]);
	for (i = 0; i < fep->num_tx_queues; i++)
		FUNC1(fep->tx_queue[i]);
}