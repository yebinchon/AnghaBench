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
typedef  int /*<<< orphan*/  u32 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  lock; int /*<<< orphan*/  cid_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  QED_ELEM_CXT ; 
 int FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct qed_hwfn *p_hwfn, u32 *cid)
{
	int rc;

	FUNC5(&p_hwfn->p_rdma_info->lock);
	rc = FUNC4(p_hwfn, &p_hwfn->p_rdma_info->cid_map, cid);
	FUNC6(&p_hwfn->p_rdma_info->lock);
	if (rc) {
		FUNC0(p_hwfn, "Failed in allocating iwarp cid\n");
		return rc;
	}
	*cid += FUNC2(p_hwfn, p_hwfn->p_rdma_info->proto);

	rc = FUNC1(p_hwfn, QED_ELEM_CXT, *cid);
	if (rc)
		FUNC3(p_hwfn, *cid);

	return rc;
}