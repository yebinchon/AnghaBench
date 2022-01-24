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
struct page {int dummy; } ;
struct gfar_rx_buff {scalar_t__ page_offset; struct page* page; int /*<<< orphan*/  dma; } ;
struct gfar_priv_rx_q {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct gfar_priv_rx_q *rxq, struct gfar_rx_buff *rxb)
{
	struct page *page;
	dma_addr_t addr;

	page = FUNC1();
	if (FUNC4(!page))
		return false;

	addr = FUNC2(rxq->dev, page, 0, PAGE_SIZE, DMA_FROM_DEVICE);
	if (FUNC4(FUNC3(rxq->dev, addr))) {
		FUNC0(page);

		return false;
	}

	rxb->dma = addr;
	rxb->page = page;
	rxb->page_offset = 0;

	return true;
}