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
struct scif_window {int nr_pages; int /*<<< orphan*/  list; int /*<<< orphan*/  unreg_state; int /*<<< orphan*/  type; void* num_pages; void* dma_addr; int /*<<< orphan*/  magic; } ;
struct scif_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OP_IDLE ; 
 int /*<<< orphan*/  SCIFEP_MAGIC ; 
 int /*<<< orphan*/  SCIF_WINDOW_PEER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct scif_dev*,struct scif_window*) ; 
 int /*<<< orphan*/  FUNC3 (struct scif_window*) ; 
 void* FUNC4 (int) ; 

__attribute__((used)) static struct scif_window *
FUNC5(struct scif_dev *scifdev, int nr_pages)
{
	struct scif_window *window;

	FUNC1();
	window = FUNC4(sizeof(*window));
	if (!window)
		goto error_ret;

	window->magic = SCIFEP_MAGIC;
	window->nr_pages = nr_pages;

	window->dma_addr = FUNC4(nr_pages * sizeof(*window->dma_addr));
	if (!window->dma_addr)
		goto error_window;

	window->num_pages = FUNC4(nr_pages *
					sizeof(*window->num_pages));
	if (!window->num_pages)
		goto error_window;

	if (FUNC2(scifdev, window))
		goto error_window;

	window->type = SCIF_WINDOW_PEER;
	window->unreg_state = OP_IDLE;
	FUNC0(&window->list);
	return window;
error_window:
	FUNC3(window);
error_ret:
	return NULL;
}