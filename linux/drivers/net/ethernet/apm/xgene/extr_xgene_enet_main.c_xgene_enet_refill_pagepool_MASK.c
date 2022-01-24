#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct xgene_enet_raw_desc16 {int /*<<< orphan*/  m1; } ;
struct xgene_enet_pdata {TYPE_1__* ring_ops; } ;
struct xgene_enet_desc_ring {int slots; int tail; struct page** frag_page; struct xgene_enet_raw_desc16* raw_desc16; struct net_device* ndev; } ;
struct page {int dummy; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* wr_cmd ) (struct xgene_enet_desc_ring*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BUFDATALEN ; 
 int /*<<< orphan*/  COHERENT ; 
 int /*<<< orphan*/  DATAADDR ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct page* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct device* FUNC6 (struct net_device*) ; 
 struct xgene_enet_pdata* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgene_enet_desc_ring*,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct xgene_enet_desc_ring *buf_pool,
				      u32 nbuf)
{
	struct xgene_enet_raw_desc16 *raw_desc;
	struct xgene_enet_pdata *pdata;
	struct net_device *ndev;
	dma_addr_t dma_addr;
	struct device *dev;
	struct page *page;
	u32 slots, tail;
	u16 hw_len;
	int i;

	if (FUNC10(!buf_pool))
		return 0;

	ndev = buf_pool->ndev;
	pdata = FUNC7(ndev);
	dev = FUNC6(ndev);
	slots = buf_pool->slots - 1;
	tail = buf_pool->tail;

	for (i = 0; i < nbuf; i++) {
		raw_desc = &buf_pool->raw_desc16[tail];

		page = FUNC3();
		if (FUNC10(!page))
			return -ENOMEM;

		dma_addr = FUNC4(dev, page, 0,
					PAGE_SIZE, DMA_FROM_DEVICE);
		if (FUNC10(FUNC5(dev, dma_addr))) {
			FUNC8(page);
			return -ENOMEM;
		}

		hw_len = FUNC11(PAGE_SIZE);
		raw_desc->m1 = FUNC2(FUNC1(DATAADDR, dma_addr) |
					   FUNC1(BUFDATALEN, hw_len) |
					   FUNC0(COHERENT));

		buf_pool->frag_page[tail] = page;
		tail = (tail + 1) & slots;
	}

	pdata->ring_ops->wr_cmd(buf_pool, nbuf);
	buf_pool->tail = tail;

	return 0;
}