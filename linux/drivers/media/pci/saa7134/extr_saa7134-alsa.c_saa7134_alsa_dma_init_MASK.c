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
struct saa7134_dmasound {int nr_pages; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/ * sglist; } ;
struct saa7134_dev {struct saa7134_dmasound dmasound; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 struct page* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct saa7134_dev *dev, int nr_pages)
{
	struct saa7134_dmasound *dma = &dev->dmasound;
	struct page *pg;
	int i;

	dma->vaddr = FUNC6(nr_pages << PAGE_SHIFT);
	if (NULL == dma->vaddr) {
		FUNC2("vmalloc_32(%d pages) failed\n", nr_pages);
		return -ENOMEM;
	}

	FUNC2("vmalloc is at addr %p, size=%d\n",
		 *dma->vaddr, nr_pages << PAGE_SHIFT);

	FUNC1(dma->vaddr, 0, nr_pages << PAGE_SHIFT);
	dma->nr_pages = nr_pages;

	dma->sglist = FUNC8(FUNC0(sizeof(*dma->sglist), dma->nr_pages));
	if (NULL == dma->sglist)
		goto vzalloc_err;

	FUNC3(dma->sglist, dma->nr_pages);
	for (i = 0; i < dma->nr_pages; i++) {
		pg = FUNC7(dma->vaddr + i * PAGE_SIZE);
		if (NULL == pg)
			goto vmalloc_to_page_err;
		FUNC4(&dma->sglist[i], pg, PAGE_SIZE, 0);
	}
	return 0;

vmalloc_to_page_err:
	FUNC5(dma->sglist);
	dma->sglist = NULL;
vzalloc_err:
	FUNC5(dma->vaddr);
	dma->vaddr = NULL;
	return -ENOMEM;
}