#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mwl8k_rx_queue {int /*<<< orphan*/ * rxd; int /*<<< orphan*/  rxd_dma; TYPE_2__* buf; } ;
struct mwl8k_priv {TYPE_1__* rxd_ops; int /*<<< orphan*/  pdev; struct mwl8k_rx_queue* rxq; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/ * skb; } ;
struct TYPE_5__ {int rxd_size; } ;

/* Variables and functions */
 int MWL8K_RX_DESCS ; 
 int /*<<< orphan*/  MWL8K_RX_MAXSZ ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw, int index)
{
	struct mwl8k_priv *priv = hw->priv;
	struct mwl8k_rx_queue *rxq = priv->rxq + index;
	int i;

	if (rxq->rxd == NULL)
		return;

	for (i = 0; i < MWL8K_RX_DESCS; i++) {
		if (rxq->buf[i].skb != NULL) {
			FUNC5(priv->pdev,
					 FUNC0(&rxq->buf[i], dma),
					 MWL8K_RX_MAXSZ, PCI_DMA_FROMDEVICE);
			FUNC1(&rxq->buf[i], dma, 0);

			FUNC3(rxq->buf[i].skb);
			rxq->buf[i].skb = NULL;
		}
	}

	FUNC2(rxq->buf);
	rxq->buf = NULL;

	FUNC4(priv->pdev,
			    MWL8K_RX_DESCS * priv->rxd_ops->rxd_size,
			    rxq->rxd, rxq->rxd_dma);
	rxq->rxd = NULL;
}