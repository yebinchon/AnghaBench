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
struct TYPE_4__ {int /*<<< orphan*/ * lookup; int /*<<< orphan*/  offset; } ;
struct TYPE_3__ {int /*<<< orphan*/ * lookup; int /*<<< orphan*/  offset; } ;
struct scif_window {int nr_pages; int nr_lookup; int /*<<< orphan*/ * num_pages; TYPE_2__ num_pages_lookup; int /*<<< orphan*/ * dma_addr; TYPE_1__ dma_addr_lookup; int /*<<< orphan*/  mapped_offset; } ;
struct scif_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int PAGE_SIZE ; 
 scalar_t__ SCIF_NR_ADDR_IN_PAGE ; 
 int __GFP_ZERO ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ *,struct scif_dev*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scif_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct scif_window*,struct scif_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct scif_dev *remote_dev,
				     struct scif_window *window)
{
	int i, j, err = 0;
	int nr_pages = window->nr_pages;
	bool vmalloc_dma_phys, vmalloc_num_pages;

	FUNC2();
	/* Map window */
	err = FUNC5(&window->mapped_offset,
			      window, remote_dev, sizeof(*window));
	if (err)
		goto error_window;

	/* Compute the number of lookup entries. 21 == 2MB Shift */
	window->nr_lookup = FUNC0(nr_pages * PAGE_SIZE,
					((2) * 1024 * 1024)) >> 21;

	window->dma_addr_lookup.lookup =
		FUNC3(&window->dma_addr_lookup.offset,
				    remote_dev, window->nr_lookup *
				    sizeof(*window->dma_addr_lookup.lookup),
				    GFP_KERNEL | __GFP_ZERO);
	if (!window->dma_addr_lookup.lookup) {
		err = -ENOMEM;
		goto error_window;
	}

	window->num_pages_lookup.lookup =
		FUNC3(&window->num_pages_lookup.offset,
				    remote_dev, window->nr_lookup *
				    sizeof(*window->num_pages_lookup.lookup),
				    GFP_KERNEL | __GFP_ZERO);
	if (!window->num_pages_lookup.lookup) {
		err = -ENOMEM;
		goto error_window;
	}

	vmalloc_dma_phys = FUNC1(&window->dma_addr[0]);
	vmalloc_num_pages = FUNC1(&window->num_pages[0]);

	/* Now map each of the pages containing physical addresses */
	for (i = 0, j = 0; i < nr_pages; i += SCIF_NR_ADDR_IN_PAGE, j++) {
		err = FUNC4(&window->dma_addr_lookup.lookup[j],
				    vmalloc_dma_phys ?
				    FUNC7(&window->dma_addr[i]) :
				    FUNC6(&window->dma_addr[i]),
				    remote_dev);
		if (err)
			goto error_window;
		err = FUNC4(&window->num_pages_lookup.lookup[j],
				    vmalloc_num_pages ?
				    FUNC7(&window->num_pages[i]) :
				    FUNC6(&window->num_pages[i]),
				    remote_dev);
		if (err)
			goto error_window;
	}
	return 0;
error_window:
	return err;
}