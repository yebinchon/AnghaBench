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
struct TYPE_2__ {int /*<<< orphan*/  rma_lock; int /*<<< orphan*/  fence_refcount; int /*<<< orphan*/  tcw_refcount; int /*<<< orphan*/  tw_refcount; int /*<<< orphan*/  mmn_list; int /*<<< orphan*/  remote_reg_list; int /*<<< orphan*/  reg_list; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct scif_endpt *ep)
{
	int ret = 0;

	FUNC2(&ep->rma_info.rma_lock);
	/* Destroy RMA Info only if both lists are empty */
	if (FUNC1(&ep->rma_info.reg_list) &&
	    FUNC1(&ep->rma_info.remote_reg_list) &&
	    FUNC1(&ep->rma_info.mmn_list) &&
	    !FUNC0(&ep->rma_info.tw_refcount) &&
	    !FUNC0(&ep->rma_info.tcw_refcount) &&
	    !FUNC0(&ep->rma_info.fence_refcount))
		ret = 1;
	FUNC3(&ep->rma_info.rma_lock);
	return ret;
}