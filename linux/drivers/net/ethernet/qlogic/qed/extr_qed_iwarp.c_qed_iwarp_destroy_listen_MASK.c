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
struct qed_iwarp_listener {int /*<<< orphan*/  list_entry; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  iw_lock; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC1 (struct qed_iwarp_listener*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(void *rdma_cxt, void *handle)
{
	struct qed_iwarp_listener *listener = handle;
	struct qed_hwfn *p_hwfn = rdma_cxt;

	FUNC0(p_hwfn, QED_MSG_RDMA, "handle=%p\n", handle);

	FUNC3(&p_hwfn->p_rdma_info->iwarp.iw_lock);
	FUNC2(&listener->list_entry);
	FUNC4(&p_hwfn->p_rdma_info->iwarp.iw_lock);

	FUNC1(listener);

	return 0;
}