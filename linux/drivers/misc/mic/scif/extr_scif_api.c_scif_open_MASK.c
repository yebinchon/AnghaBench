#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct scif_endpt* qp; } ;
struct scif_endpt {TYPE_2__ qp_info; int /*<<< orphan*/  state; int /*<<< orphan*/  recvlock; int /*<<< orphan*/  sendlock; int /*<<< orphan*/  lock; } ;
typedef  struct scif_endpt* scif_epd_t ;
struct TYPE_4__ {int /*<<< orphan*/  this_device; } ;
struct TYPE_6__ {TYPE_1__ mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCIFEP_UNBOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct scif_endpt*) ; 
 int /*<<< orphan*/  FUNC1 (struct scif_endpt*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct scif_endpt*) ; 
 TYPE_3__ scif_info ; 
 int /*<<< orphan*/  FUNC6 (struct scif_endpt*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

scif_epd_t FUNC8(void)
{
	struct scif_endpt *ep;
	int err;

	FUNC3();
	ep = FUNC2(sizeof(*ep), GFP_KERNEL);
	if (!ep)
		goto err_ep_alloc;

	ep->qp_info.qp = FUNC2(sizeof(*ep->qp_info.qp), GFP_KERNEL);
	if (!ep->qp_info.qp)
		goto err_qp_alloc;

	err = FUNC5(ep);
	if (err)
		goto err_anon_inode;

	FUNC7(&ep->lock);
	FUNC4(&ep->sendlock);
	FUNC4(&ep->recvlock);

	FUNC6(ep);
	ep->state = SCIFEP_UNBOUND;
	FUNC0(scif_info.mdev.this_device,
		"SCIFAPI open: ep %p success\n", ep);
	return ep;

err_anon_inode:
	FUNC1(ep->qp_info.qp);
err_qp_alloc:
	FUNC1(ep);
err_ep_alloc:
	return NULL;
}