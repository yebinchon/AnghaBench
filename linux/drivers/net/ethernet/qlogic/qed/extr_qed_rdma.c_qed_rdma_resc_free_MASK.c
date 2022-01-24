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
struct qed_rdma_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  port; int /*<<< orphan*/  real_cid_map; int /*<<< orphan*/  srq_map; int /*<<< orphan*/  tid_map; int /*<<< orphan*/  toggle_bits; int /*<<< orphan*/  cq_map; int /*<<< orphan*/  dpi_map; int /*<<< orphan*/  pd_map; int /*<<< orphan*/  cid_map; } ;
struct qed_hwfn {struct qed_rdma_info* p_rdma_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct qed_hwfn *p_hwfn)
{
	struct qed_rdma_info *p_rdma_info = p_hwfn->p_rdma_info;

	if (FUNC0(p_hwfn))
		FUNC2(p_hwfn);

	FUNC3(p_hwfn, &p_hwfn->p_rdma_info->cid_map, 1);
	FUNC3(p_hwfn, &p_hwfn->p_rdma_info->pd_map, 1);
	FUNC3(p_hwfn, &p_hwfn->p_rdma_info->dpi_map, 1);
	FUNC3(p_hwfn, &p_hwfn->p_rdma_info->cq_map, 1);
	FUNC3(p_hwfn, &p_hwfn->p_rdma_info->toggle_bits, 0);
	FUNC3(p_hwfn, &p_hwfn->p_rdma_info->tid_map, 1);
	FUNC3(p_hwfn, &p_hwfn->p_rdma_info->srq_map, 1);
	FUNC3(p_hwfn, &p_hwfn->p_rdma_info->real_cid_map, 1);

	FUNC1(p_rdma_info->port);
	FUNC1(p_rdma_info->dev);
}