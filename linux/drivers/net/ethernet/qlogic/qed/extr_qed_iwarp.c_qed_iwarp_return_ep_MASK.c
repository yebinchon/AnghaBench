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
struct qed_iwarp_ep {scalar_t__ tcp_cid; int /*<<< orphan*/  list_entry; int /*<<< orphan*/  cm_info; TYPE_1__* qp; int /*<<< orphan*/  state; } ;
struct qed_hwfn {TYPE_3__* p_rdma_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  iw_lock; int /*<<< orphan*/  ep_free_list; } ;
struct TYPE_6__ {TYPE_2__ iwarp; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  QED_IWARP_EP_INIT ; 
 scalar_t__ QED_IWARP_INVALID_TCP_CID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct qed_hwfn *p_hwfn, struct qed_iwarp_ep *ep)
{
	ep->state = QED_IWARP_EP_INIT;
	if (ep->qp)
		ep->qp->ep = NULL;
	ep->qp = NULL;
	FUNC1(&ep->cm_info, 0, sizeof(ep->cm_info));

	if (ep->tcp_cid == QED_IWARP_INVALID_TCP_CID) {
		/* We don't care about the return code, it's ok if tcp_cid
		 * remains invalid...in this case we'll defer allocation
		 */
		FUNC2(p_hwfn, &ep->tcp_cid);
	}
	FUNC3(&p_hwfn->p_rdma_info->iwarp.iw_lock);

	FUNC0(&ep->list_entry,
		       &p_hwfn->p_rdma_info->iwarp.ep_free_list);

	FUNC4(&p_hwfn->p_rdma_info->iwarp.iw_lock);
}