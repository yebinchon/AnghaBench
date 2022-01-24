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
struct fec_enet_private {int num_rx_queues; int num_tx_queues; scalar_t__ hwp; struct fec_enet_priv_tx_q** tx_queue; struct fec_enet_priv_rx_q** rx_queue; } ;
struct TYPE_4__ {int dma; } ;
struct fec_enet_priv_tx_q {TYPE_2__ bd; } ;
struct TYPE_3__ {int dma; } ;
struct fec_enet_priv_rx_q {TYPE_1__ bd; } ;

/* Variables and functions */
 int DMA_CLASS_EN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int PKT_MAXBUF_SIZE ; 
 int FUNC6 (int) ; 
 int RCMR_MATCHEN ; 
 struct fec_enet_private* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC7(ndev);
	struct fec_enet_priv_tx_q *txq;
	struct fec_enet_priv_rx_q *rxq;
	int i;

	for (i = 0; i < fep->num_rx_queues; i++) {
		rxq = fep->rx_queue[i];
		FUNC8(rxq->bd.dma, fep->hwp + FUNC3(i));
		FUNC8(PKT_MAXBUF_SIZE, fep->hwp + FUNC2(i));

		/* enable DMA1/2 */
		if (i)
			FUNC8(RCMR_MATCHEN | FUNC6(i),
			       fep->hwp + FUNC1(i));
	}

	for (i = 0; i < fep->num_tx_queues; i++) {
		txq = fep->tx_queue[i];
		FUNC8(txq->bd.dma, fep->hwp + FUNC4(i));

		/* enable DMA1/2 */
		if (i)
			FUNC8(DMA_CLASS_EN | FUNC5(i),
			       fep->hwp + FUNC0(i));
	}
}