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
typedef  int /*<<< orphan*/  u32 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_count; } ;
struct TYPE_3__ {int /*<<< orphan*/  proto; TYPE_2__ tcp_cid_map; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QED_IWARP_INVALID_TCP_CID ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 scalar_t__ FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qed_hwfn*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct qed_hwfn *p_hwfn, u32 *cid)
{
	int rc;

	FUNC3(&p_hwfn->p_rdma_info->lock);

	rc = FUNC2(p_hwfn,
				    &p_hwfn->p_rdma_info->tcp_cid_map, cid);

	FUNC4(&p_hwfn->p_rdma_info->lock);

	if (rc) {
		FUNC0(p_hwfn, QED_MSG_RDMA,
			   "can't allocate iwarp tcp cid max-count=%d\n",
			   p_hwfn->p_rdma_info->tcp_cid_map.max_count);

		*cid = QED_IWARP_INVALID_TCP_CID;
		return rc;
	}

	*cid += FUNC1(p_hwfn,
					    p_hwfn->p_rdma_info->proto);
	return 0;
}