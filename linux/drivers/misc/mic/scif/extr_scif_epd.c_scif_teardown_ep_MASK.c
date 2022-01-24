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
struct TYPE_4__ {struct scif_qp* rb_base; } ;
struct scif_qp {TYPE_2__ inbound_q; } ;
struct TYPE_3__ {struct scif_qp* qp; } ;
struct scif_endpt {int /*<<< orphan*/  lock; TYPE_1__ qp_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scif_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct scif_endpt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void *endpt)
{
	struct scif_endpt *ep = endpt;
	struct scif_qp *qp = ep->qp_info.qp;

	if (qp) {
		FUNC2(&ep->lock);
		FUNC1(ep);
		FUNC3(&ep->lock);
		FUNC0(qp->inbound_q.rb_base);
		FUNC0(qp);
	}
}