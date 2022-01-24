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
struct ivtv_user_dma {int page_count; int /*<<< orphan*/ * map; scalar_t__ SG_length; int /*<<< orphan*/  SGlist; } ;
struct ivtv {int /*<<< orphan*/  pdev; struct ivtv_user_dma udma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ivtv *itv)
{
	struct ivtv_user_dma *dma = &itv->udma;
	int i;

	FUNC0("ivtv_unmap_user_dma\n");

	/* Nothing to free */
	if (dma->page_count == 0)
		return;

	/* Unmap Scatterlist */
	if (dma->SG_length) {
		FUNC2(itv->pdev, dma->SGlist, dma->page_count, PCI_DMA_TODEVICE);
		dma->SG_length = 0;
	}
	/* sync DMA */
	FUNC1(itv);

	/* Release User Pages */
	for (i = 0; i < dma->page_count; i++) {
		FUNC3(dma->map[i]);
	}
	dma->page_count = 0;
}