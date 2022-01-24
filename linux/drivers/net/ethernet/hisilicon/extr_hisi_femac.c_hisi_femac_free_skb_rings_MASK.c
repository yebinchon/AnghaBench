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
typedef  size_t u32 ;
struct sk_buff {int dummy; } ;
struct hisi_femac_queue {size_t tail; size_t head; size_t num; struct sk_buff** skb; int /*<<< orphan*/ * dma_phys; } ;
struct hisi_femac_priv {scalar_t__ tx_fifo_used_cnt; int /*<<< orphan*/  ndev; int /*<<< orphan*/  dev; struct hisi_femac_queue rxq; struct hisi_femac_queue txq; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_femac_priv*,struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct hisi_femac_priv *priv)
{
	struct hisi_femac_queue *txq = &priv->txq;
	struct hisi_femac_queue *rxq = &priv->rxq;
	struct sk_buff *skb;
	dma_addr_t dma_addr;
	u32 pos;

	pos = rxq->tail;
	while (pos != rxq->head) {
		skb = rxq->skb[pos];
		if (FUNC4(!skb)) {
			FUNC3(priv->ndev, "NULL rx skb. pos=%d, head=%d\n",
				   pos, rxq->head);
			continue;
		}

		dma_addr = rxq->dma_phys[pos];
		FUNC1(priv->dev, dma_addr, MAX_FRAME_SIZE,
				 DMA_FROM_DEVICE);

		FUNC0(skb);
		rxq->skb[pos] = NULL;
		pos = (pos + 1) % rxq->num;
	}
	rxq->tail = pos;

	pos = txq->tail;
	while (pos != txq->head) {
		skb = txq->skb[pos];
		if (FUNC4(!skb)) {
			FUNC3(priv->ndev, "NULL tx skb. pos=%d, head=%d\n",
				   pos, txq->head);
			continue;
		}
		FUNC2(priv, skb, pos);
		FUNC0(skb);
		txq->skb[pos] = NULL;
		pos = (pos + 1) % txq->num;
	}
	txq->tail = pos;
	priv->tx_fifo_used_cnt = 0;
}