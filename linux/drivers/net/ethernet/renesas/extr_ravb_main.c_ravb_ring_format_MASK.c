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
typedef  int /*<<< orphan*/  u32 ;
struct ravb_tx_desc {void* die_dt; void* dptr; void* ds_cc; } ;
struct ravb_private {int num_tx_desc; int* num_rx_ring; int* num_tx_ring; scalar_t__* tx_desc_dma; struct ravb_desc* desc_bat; scalar_t__* rx_desc_dma; struct ravb_tx_desc** tx_ring; struct ravb_tx_desc** rx_ring; int /*<<< orphan*/  rx_buf_sz; TYPE_1__*** rx_skb; scalar_t__* dirty_tx; scalar_t__* dirty_rx; scalar_t__* cur_tx; scalar_t__* cur_rx; } ;
struct ravb_ex_rx_desc {void* die_dt; void* dptr; void* ds_cc; } ;
struct ravb_desc {void* dptr; void* die_dt; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_2__ dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 void* DT_EEMPTY ; 
 void* DT_FEMPTY ; 
 void* DT_LINKFIX ; 
 int RX_QUEUE_OFFSET ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ravb_tx_desc*,int /*<<< orphan*/ ,int) ; 
 struct ravb_private* FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev, int q)
{
	struct ravb_private *priv = FUNC5(ndev);
	int num_tx_desc = priv->num_tx_desc;
	struct ravb_ex_rx_desc *rx_desc;
	struct ravb_tx_desc *tx_desc;
	struct ravb_desc *desc;
	int rx_ring_size = sizeof(*rx_desc) * priv->num_rx_ring[q];
	int tx_ring_size = sizeof(*tx_desc) * priv->num_tx_ring[q] *
			   num_tx_desc;
	dma_addr_t dma_addr;
	int i;

	priv->cur_rx[q] = 0;
	priv->cur_tx[q] = 0;
	priv->dirty_rx[q] = 0;
	priv->dirty_tx[q] = 0;

	FUNC4(priv->rx_ring[q], 0, rx_ring_size);
	/* Build RX ring buffer */
	for (i = 0; i < priv->num_rx_ring[q]; i++) {
		/* RX descriptor */
		rx_desc = &priv->rx_ring[q][i];
		rx_desc->ds_cc = FUNC0(priv->rx_buf_sz);
		dma_addr = FUNC2(ndev->dev.parent, priv->rx_skb[q][i]->data,
					  priv->rx_buf_sz,
					  DMA_FROM_DEVICE);
		/* We just set the data size to 0 for a failed mapping which
		 * should prevent DMA from happening...
		 */
		if (FUNC3(ndev->dev.parent, dma_addr))
			rx_desc->ds_cc = FUNC0(0);
		rx_desc->dptr = FUNC1(dma_addr);
		rx_desc->die_dt = DT_FEMPTY;
	}
	rx_desc = &priv->rx_ring[q][i];
	rx_desc->dptr = FUNC1((u32)priv->rx_desc_dma[q]);
	rx_desc->die_dt = DT_LINKFIX; /* type */

	FUNC4(priv->tx_ring[q], 0, tx_ring_size);
	/* Build TX ring buffer */
	for (i = 0, tx_desc = priv->tx_ring[q]; i < priv->num_tx_ring[q];
	     i++, tx_desc++) {
		tx_desc->die_dt = DT_EEMPTY;
		if (num_tx_desc > 1) {
			tx_desc++;
			tx_desc->die_dt = DT_EEMPTY;
		}
	}
	tx_desc->dptr = FUNC1((u32)priv->tx_desc_dma[q]);
	tx_desc->die_dt = DT_LINKFIX; /* type */

	/* RX descriptor base address for best effort */
	desc = &priv->desc_bat[RX_QUEUE_OFFSET + q];
	desc->die_dt = DT_LINKFIX; /* type */
	desc->dptr = FUNC1((u32)priv->rx_desc_dma[q]);

	/* TX descriptor base address for best effort */
	desc = &priv->desc_bat[q];
	desc->die_dt = DT_LINKFIX; /* type */
	desc->dptr = FUNC1((u32)priv->tx_desc_dma[q]);
}