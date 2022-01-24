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
struct stmmac_tx_queue {unsigned int cur_tx; TYPE_2__* tx_skbuff_dma; struct dma_desc* dma_tx; int /*<<< orphan*/ ** tx_skbuff; struct stmmac_priv* priv_data; } ;
struct stmmac_priv {int /*<<< orphan*/  device; TYPE_1__* plat; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct dma_desc {void* des2; } ;
struct TYPE_4__ {unsigned int buf; unsigned int len; } ;
struct TYPE_3__ {scalar_t__ enh_desc; } ;

/* Variables and functions */
 unsigned int BUF_SIZE_2KiB ; 
 unsigned int BUF_SIZE_8KiB ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  DMA_TX_SIZE ; 
 int /*<<< orphan*/  STMMAC_CHAIN_MODE ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct stmmac_priv*,struct dma_desc*,int,unsigned int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *p, struct sk_buff *skb, int csum)
{
	struct stmmac_tx_queue *tx_q = (struct stmmac_tx_queue *)p;
	unsigned int nopaged_len = FUNC4(skb);
	struct stmmac_priv *priv = tx_q->priv_data;
	unsigned int entry = tx_q->cur_tx;
	unsigned int bmax, des2;
	unsigned int i = 1, len;
	struct dma_desc *desc;

	desc = tx_q->dma_tx + entry;

	if (priv->plat->enh_desc)
		bmax = BUF_SIZE_8KiB;
	else
		bmax = BUF_SIZE_2KiB;

	len = nopaged_len - bmax;

	des2 = FUNC2(priv->device, skb->data,
			      bmax, DMA_TO_DEVICE);
	desc->des2 = FUNC1(des2);
	if (FUNC3(priv->device, des2))
		return -1;
	tx_q->tx_skbuff_dma[entry].buf = des2;
	tx_q->tx_skbuff_dma[entry].len = bmax;
	/* do not close the descriptor and do not set own bit */
	FUNC5(priv, desc, 1, bmax, csum, STMMAC_CHAIN_MODE,
			0, false, skb->len);

	while (len != 0) {
		tx_q->tx_skbuff[entry] = NULL;
		entry = FUNC0(entry, DMA_TX_SIZE);
		desc = tx_q->dma_tx + entry;

		if (len > bmax) {
			des2 = FUNC2(priv->device,
					      (skb->data + bmax * i),
					      bmax, DMA_TO_DEVICE);
			desc->des2 = FUNC1(des2);
			if (FUNC3(priv->device, des2))
				return -1;
			tx_q->tx_skbuff_dma[entry].buf = des2;
			tx_q->tx_skbuff_dma[entry].len = bmax;
			FUNC5(priv, desc, 0, bmax, csum,
					STMMAC_CHAIN_MODE, 1, false, skb->len);
			len -= bmax;
			i++;
		} else {
			des2 = FUNC2(priv->device,
					      (skb->data + bmax * i), len,
					      DMA_TO_DEVICE);
			desc->des2 = FUNC1(des2);
			if (FUNC3(priv->device, des2))
				return -1;
			tx_q->tx_skbuff_dma[entry].buf = des2;
			tx_q->tx_skbuff_dma[entry].len = len;
			/* last descriptor can be set now */
			FUNC5(priv, desc, 0, len, csum,
					STMMAC_CHAIN_MODE, 1, true, skb->len);
			len = 0;
		}
	}

	tx_q->cur_tx = entry;

	return entry;
}