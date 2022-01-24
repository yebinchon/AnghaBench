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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pd_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *rdma_cxt, u16 *pd)
{
	struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
	u32 returned_id;
	int rc;

	FUNC0(p_hwfn, QED_MSG_RDMA, "Alloc PD\n");

	/* Allocates an unused protection domain */
	FUNC2(&p_hwfn->p_rdma_info->lock);
	rc = FUNC1(p_hwfn,
				    &p_hwfn->p_rdma_info->pd_map, &returned_id);
	FUNC3(&p_hwfn->p_rdma_info->lock);

	*pd = (u16)returned_id;

	FUNC0(p_hwfn, QED_MSG_RDMA, "Alloc PD - done, rc = %d\n", rc);
	return rc;
}