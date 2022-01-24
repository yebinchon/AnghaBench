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
struct stmmac_rx_queue {unsigned int dirty_rx; scalar_t__ rx_count_frames; scalar_t__ rx_tail_addr; scalar_t__ dma_rx_phy; int /*<<< orphan*/  page_pool; struct dma_desc* dma_rx; scalar_t__ dma_erx; struct stmmac_rx_buffer* buf_pool; } ;
struct stmmac_rx_buffer {void* sec_addr; void* addr; void* page; void* sec_page; } ;
struct stmmac_priv {scalar_t__ rx_coal_frames; int /*<<< orphan*/  ioaddr; scalar_t__ use_riwt; int /*<<< orphan*/  device; scalar_t__ sph; scalar_t__ extend_desc; int /*<<< orphan*/  dma_buf_sz; struct stmmac_rx_queue* rx_queue; } ;
struct dma_desc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_RX_SIZE ; 
 int PAGE_SIZE ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct stmmac_priv*,struct stmmac_rx_queue*,struct dma_desc*) ; 
 int FUNC7 (struct stmmac_priv*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct stmmac_priv*,struct dma_desc*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct stmmac_priv*,struct dma_desc*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct stmmac_priv*,struct dma_desc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct stmmac_priv*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 

__attribute__((used)) static inline void FUNC12(struct stmmac_priv *priv, u32 queue)
{
	struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
	int len, dirty = FUNC7(priv, queue);
	unsigned int entry = rx_q->dirty_rx;

	len = FUNC0(priv->dma_buf_sz, PAGE_SIZE) * PAGE_SIZE;

	while (dirty-- > 0) {
		struct stmmac_rx_buffer *buf = &rx_q->buf_pool[entry];
		struct dma_desc *p;
		bool use_rx_wd;

		if (priv->extend_desc)
			p = (struct dma_desc *)(rx_q->dma_erx + entry);
		else
			p = rx_q->dma_rx + entry;

		if (!buf->page) {
			buf->page = FUNC4(rx_q->page_pool);
			if (!buf->page)
				break;
		}

		if (priv->sph && !buf->sec_page) {
			buf->sec_page = FUNC4(rx_q->page_pool);
			if (!buf->sec_page)
				break;

			buf->sec_addr = FUNC5(buf->sec_page);

			FUNC2(priv->device, buf->sec_addr,
						   len, DMA_FROM_DEVICE);
		}

		buf->addr = FUNC5(buf->page);

		/* Sync whole allocation to device. This will invalidate old
		 * data.
		 */
		FUNC2(priv->device, buf->addr, len,
					   DMA_FROM_DEVICE);

		FUNC8(priv, p, buf->addr);
		FUNC9(priv, p, buf->sec_addr);
		FUNC6(priv, rx_q, p);

		rx_q->rx_count_frames++;
		rx_q->rx_count_frames += priv->rx_coal_frames;
		if (rx_q->rx_count_frames > priv->rx_coal_frames)
			rx_q->rx_count_frames = 0;
		use_rx_wd = priv->use_riwt && rx_q->rx_count_frames;

		FUNC3();
		FUNC10(priv, p, use_rx_wd);

		entry = FUNC1(entry, DMA_RX_SIZE);
	}
	rx_q->dirty_rx = entry;
	rx_q->rx_tail_addr = rx_q->dma_rx_phy +
			    (rx_q->dirty_rx * sizeof(struct dma_desc));
	FUNC11(priv, priv->ioaddr, rx_q->rx_tail_addr, queue);
}