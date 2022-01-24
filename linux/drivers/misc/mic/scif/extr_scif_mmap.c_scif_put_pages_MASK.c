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
struct scifmsg {int /*<<< orphan*/ * payload; int /*<<< orphan*/  src; int /*<<< orphan*/  uop; } ;
struct scif_window {scalar_t__ magic; int /*<<< orphan*/  peer_window; int /*<<< orphan*/  list; int /*<<< orphan*/  ref_count; scalar_t__ ep; } ;
struct scif_range {int nr_pages; int /*<<< orphan*/  va; int /*<<< orphan*/  phys_addr; struct scif_window* cookie; } ;
struct TYPE_3__ {int /*<<< orphan*/  rma_lock; int /*<<< orphan*/  dma_chan; } ;
struct scif_endpt {scalar_t__ state; TYPE_1__ rma_info; TYPE_2__* remote_dev; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  sdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 scalar_t__ SCIFEP_CONNECTED ; 
 scalar_t__ SCIFEP_DISCONNECTED ; 
 scalar_t__ SCIFEP_MAGIC ; 
 int /*<<< orphan*/  SCIF_MUNMAP ; 
 int /*<<< orphan*/  FUNC0 (struct scif_range*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct scif_window*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct scifmsg*) ; 
 int /*<<< orphan*/  FUNC8 (struct scif_window*,int) ; 

int FUNC9(struct scif_range *pages)
{
	struct scif_endpt *ep;
	struct scif_window *window;
	struct scifmsg msg;

	if (!pages || !pages->cookie)
		return -EINVAL;

	window = pages->cookie;

	if (!window || window->magic != SCIFEP_MAGIC)
		return -EINVAL;

	ep = (struct scif_endpt *)window->ep;
	/*
	 * If the state is SCIFEP_CONNECTED or SCIFEP_DISCONNECTED then the
	 * callee should be allowed to release references to the pages,
	 * else the endpoint was not connected in the first place,
	 * hence the ENOTCONN.
	 */
	if (ep->state != SCIFEP_CONNECTED && ep->state != SCIFEP_DISCONNECTED)
		return -ENOTCONN;

	FUNC2(&ep->rma_info.rma_lock);

	FUNC8(window, pages->nr_pages);

	/* Initiate window destruction if ref count is zero */
	if (!window->ref_count) {
		FUNC1(&window->list);
		FUNC3(&ep->rma_info.rma_lock);
		FUNC5(ep->remote_dev->sdev,
				    ep->rma_info.dma_chan);
		/* Inform the peer about this window being destroyed. */
		msg.uop = SCIF_MUNMAP;
		msg.src = ep->port;
		msg.payload[0] = window->peer_window;
		/* No error handling for notification messages */
		FUNC7(ep->remote_dev, &msg);
		/* Destroy this window from the peer's registered AS */
		FUNC4(window);
	} else {
		FUNC3(&ep->rma_info.rma_lock);
	}

	FUNC6(pages->phys_addr, pages->nr_pages * sizeof(dma_addr_t));
	FUNC6(pages->va, pages->nr_pages * sizeof(void *));
	FUNC0(pages);
	return 0;
}