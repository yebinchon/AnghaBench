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
typedef  scalar_t__ u64 ;
struct scifmsg {scalar_t__* payload; int /*<<< orphan*/  src; int /*<<< orphan*/  uop; } ;
struct scif_allocmsg {scalar_t__ state; scalar_t__ vaddr; int /*<<< orphan*/  allocwq; } ;
struct scif_window {int nr_pages; struct scif_window* num_pages; struct scif_window* dma_addr; int /*<<< orphan*/  offset; struct scif_allocmsg alloc_handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  rma_lock; } ;
struct scif_endpt {TYPE_1__ rma_info; int /*<<< orphan*/  remote_dev; scalar_t__ remote_ep; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ OP_COMPLETED ; 
 scalar_t__ OP_IN_PROGRESS ; 
 int /*<<< orphan*/  SCIF_FREE_VIRT ; 
 int /*<<< orphan*/  SCIF_NODE_ALIVE_TIMEOUT ; 
 scalar_t__ SCIF_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scifmsg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scif_window*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scif_endpt*,struct scif_window*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct scif_endpt*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct scif_endpt *ep,
					   struct scif_window *window)
{
	int err;
	int nr_pages = window->nr_pages;
	struct scif_allocmsg *alloc = &window->alloc_handle;
	struct scifmsg msg;

retry:
	/* Wait for a SCIF_ALLOC_GNT/REJ message */
	err = FUNC6(alloc->allocwq,
				 alloc->state != OP_IN_PROGRESS,
				 SCIF_NODE_ALIVE_TIMEOUT);
	if (!err && FUNC5(ep))
		goto retry;

	FUNC1(&ep->rma_info.rma_lock);
	if (alloc->state == OP_COMPLETED) {
		msg.uop = SCIF_FREE_VIRT;
		msg.src = ep->port;
		msg.payload[0] = ep->remote_ep;
		msg.payload[1] = window->alloc_handle.vaddr;
		msg.payload[2] = (u64)window;
		msg.payload[3] = SCIF_REGISTER;
		FUNC0(ep->remote_dev, &msg);
	}
	FUNC2(&ep->rma_info.rma_lock);

	FUNC4(ep, window, window->offset);
	FUNC3(window->dma_addr, nr_pages * sizeof(*window->dma_addr));
	FUNC3(window->num_pages, nr_pages * sizeof(*window->num_pages));
	FUNC3(window, sizeof(*window));
}