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
struct videobuf_dmabuf {int nr_pages; int /*<<< orphan*/  direction; scalar_t__ bus_addr; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/ * vaddr_pages; int /*<<< orphan*/ * dma_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/ * pages; int /*<<< orphan*/  sglen; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_DMABUF ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct videobuf_dmabuf *dma)
{
	int i;
	FUNC1(dma->magic, MAGIC_DMABUF);
	FUNC0(dma->sglen);

	if (dma->pages) {
		for (i = 0; i < dma->nr_pages; i++)
			FUNC5(dma->pages[i]);
		FUNC3(dma->pages);
		dma->pages = NULL;
	}

	if (dma->dma_addr) {
		for (i = 0; i < dma->nr_pages; i++) {
			void *addr;

			addr = FUNC4(dma->vaddr_pages[i]);
			FUNC2(dma->dev, PAGE_SIZE, addr,
					  dma->dma_addr[i]);
		}
		FUNC3(dma->dma_addr);
		dma->dma_addr = NULL;
		FUNC3(dma->vaddr_pages);
		dma->vaddr_pages = NULL;
		FUNC6(dma->vaddr);
		dma->vaddr = NULL;
	}

	if (dma->bus_addr)
		dma->bus_addr = 0;
	dma->direction = DMA_NONE;

	return 0;
}