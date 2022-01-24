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
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  iw_lock; int /*<<< orphan*/  ep_free_list; } ;
struct TYPE_3__ {TYPE_2__ iwarp; int /*<<< orphan*/  tcp_cid_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QED_IWARP_PREALLOC_CNT ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int FUNC2 (struct qed_hwfn*,int) ; 
 int FUNC3 (struct qed_hwfn*) ; 
 int FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct qed_hwfn *p_hwfn)
{
	int rc;

	/* Allocate bitmap for tcp cid. These are used by passive side
	 * to ensure it can allocate a tcp cid during dpc that was
	 * pre-acquired and doesn't require dynamic allocation of ilt
	 */
	rc = FUNC4(p_hwfn, &p_hwfn->p_rdma_info->tcp_cid_map,
				 QED_IWARP_PREALLOC_CNT, "TCP_CID");
	if (rc) {
		FUNC0(p_hwfn, QED_MSG_RDMA,
			   "Failed to allocate tcp cid, rc = %d\n", rc);
		return rc;
	}

	FUNC1(&p_hwfn->p_rdma_info->iwarp.ep_free_list);
	FUNC5(&p_hwfn->p_rdma_info->iwarp.iw_lock);

	rc = FUNC2(p_hwfn, true);
	if (rc)
		return rc;

	return FUNC3(p_hwfn);
}