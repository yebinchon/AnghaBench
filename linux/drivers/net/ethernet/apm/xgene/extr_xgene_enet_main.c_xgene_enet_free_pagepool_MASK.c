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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct xgene_enet_raw_desc {int /*<<< orphan*/  m0; } ;
struct xgene_enet_desc_ring {size_t slots; size_t head; struct page** frag_page; int /*<<< orphan*/  ndev; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  DATAADDR ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct xgene_enet_desc_ring *buf_pool,
				     struct xgene_enet_raw_desc *raw_desc,
				     struct xgene_enet_raw_desc *exp_desc)
{
	__le64 *desc = (void *)exp_desc;
	dma_addr_t dma_addr;
	struct device *dev;
	struct page *page;
	u16 slots, head;
	u32 frag_size;
	int i;

	if (!buf_pool || !raw_desc || !exp_desc ||
	    (!FUNC0(NV, FUNC2(raw_desc->m0))))
		return;

	dev = FUNC3(buf_pool->ndev);
	slots = buf_pool->slots - 1;
	head = buf_pool->head;

	for (i = 0; i < 4; i++) {
		frag_size = FUNC5(FUNC2(desc[i ^ 1]));
		if (!frag_size)
			break;

		dma_addr = FUNC0(DATAADDR, FUNC2(desc[i ^ 1]));
		FUNC1(dev, dma_addr, PAGE_SIZE, DMA_FROM_DEVICE);

		page = buf_pool->frag_page[head];
		FUNC4(page);

		buf_pool->frag_page[head] = NULL;
		head = (head + 1) & slots;
	}
	buf_pool->head = head;
}