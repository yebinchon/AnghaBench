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
typedef  scalar_t__ u16 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cid_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct qed_hwfn *p_hwfn, u16 cid)
{
	FUNC1(&p_hwfn->p_rdma_info->lock);
	FUNC0(p_hwfn, &p_hwfn->p_rdma_info->cid_map, cid);
	FUNC0(p_hwfn, &p_hwfn->p_rdma_info->cid_map, cid + 1);
	FUNC2(&p_hwfn->p_rdma_info->lock);
}