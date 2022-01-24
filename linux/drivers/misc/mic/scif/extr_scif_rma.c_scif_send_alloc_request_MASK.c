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
typedef  scalar_t__ u64 ;
struct scifmsg {scalar_t__* payload; int /*<<< orphan*/  uop; } ;
struct scif_allocmsg {int /*<<< orphan*/  allocwq; int /*<<< orphan*/  state; } ;
struct scif_window {struct scif_allocmsg alloc_handle; scalar_t__ nr_pages; } ;
struct scif_endpt {int /*<<< orphan*/  remote_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_IN_PROGRESS ; 
 int /*<<< orphan*/  SCIF_ALLOC_REQ ; 
 int FUNC0 (int /*<<< orphan*/ ,struct scifmsg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct scif_endpt *ep,
				   struct scif_window *window)
{
	struct scifmsg msg;
	struct scif_allocmsg *alloc = &window->alloc_handle;

	/* Set up the Alloc Handle */
	alloc->state = OP_IN_PROGRESS;
	FUNC1(&alloc->allocwq);

	/* Send out an allocation request */
	msg.uop = SCIF_ALLOC_REQ;
	msg.payload[1] = window->nr_pages;
	msg.payload[2] = (u64)&window->alloc_handle;
	return FUNC0(ep->remote_dev, &msg);
}