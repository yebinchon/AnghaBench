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
typedef  size_t u16 ;
struct page {int dummy; } ;
struct netsec_priv {int /*<<< orphan*/  ndev; int /*<<< orphan*/  dev; struct netsec_desc_ring* desc_ring; } ;
struct netsec_desc_ring {scalar_t__ tail; scalar_t__ head; struct netsec_desc* vaddr; struct netsec_desc* desc; int /*<<< orphan*/  page_pool; int /*<<< orphan*/  xdp_rxq; } ;
struct netsec_desc {int /*<<< orphan*/  skb; int /*<<< orphan*/  len; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 size_t DESC_NUM ; 
 size_t DESC_SZ ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int NETSEC_RING_RX ; 
 int NETSEC_RING_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netsec_desc*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page*,int) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct netsec_priv *priv, int id)
{
	struct netsec_desc_ring *dring = &priv->desc_ring[id];
	struct netsec_desc *desc;
	u16 idx;

	if (!dring->vaddr || !dring->desc)
		return;
	for (idx = 0; idx < DESC_NUM; idx++) {
		desc = &dring->desc[idx];
		if (!desc->addr)
			continue;

		if (id == NETSEC_RING_RX) {
			struct page *page = FUNC6(desc->addr);

			FUNC5(dring->page_pool, page, false);
		} else if (id == NETSEC_RING_TX) {
			FUNC1(priv->dev, desc->dma_addr, desc->len,
					 DMA_TO_DEVICE);
			FUNC0(desc->skb);
		}
	}

	/* Rx is currently using page_pool */
	if (id == NETSEC_RING_RX) {
		if (FUNC7(&dring->xdp_rxq))
			FUNC8(&dring->xdp_rxq);
		FUNC4(dring->page_pool);
	}

	FUNC2(dring->desc, 0, sizeof(struct netsec_desc) * DESC_NUM);
	FUNC2(dring->vaddr, 0, DESC_SZ * DESC_NUM);

	dring->head = 0;
	dring->tail = 0;

	if (id == NETSEC_RING_TX)
		FUNC3(priv->ndev);
}