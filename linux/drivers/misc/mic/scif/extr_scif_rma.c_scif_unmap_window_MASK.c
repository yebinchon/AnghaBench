#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scif_window {int nr_contig_chunks; int* dma_addr; int* num_pages; TYPE_2__* st; } ;
struct scif_dev {TYPE_1__* sdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,struct scif_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scif_dev*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(struct scif_dev *remote_dev, struct scif_window *window)
{
	int j;

	if (FUNC2() && !FUNC4(remote_dev)) {
		if (window->st) {
			FUNC0(&remote_dev->sdev->dev,
				     window->st->sgl, window->st->nents,
				     DMA_BIDIRECTIONAL);
			FUNC5(window->st);
			FUNC1(window->st);
			window->st = NULL;
		}
	} else {
		for (j = 0; j < window->nr_contig_chunks; j++) {
			if (window->dma_addr[j]) {
				FUNC3(window->dma_addr[j],
						  remote_dev,
						  window->num_pages[j] <<
						  PAGE_SHIFT);
				window->dma_addr[j] = 0x0;
			}
		}
	}
}