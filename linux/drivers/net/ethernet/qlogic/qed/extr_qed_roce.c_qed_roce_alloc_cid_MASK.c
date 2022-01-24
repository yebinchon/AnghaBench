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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct qed_rdma_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  cid_map; int /*<<< orphan*/  proto; } ;
struct qed_hwfn {struct qed_rdma_info* p_rdma_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  QED_ELEM_CXT ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qed_hwfn*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct qed_hwfn *p_hwfn, u16 *cid)
{
	struct qed_rdma_info *p_rdma_info = p_hwfn->p_rdma_info;
	u32 responder_icid;
	u32 requester_icid;
	int rc;

	FUNC6(&p_hwfn->p_rdma_info->lock);
	rc = FUNC5(p_hwfn, &p_rdma_info->cid_map,
				    &responder_icid);
	if (rc) {
		FUNC7(&p_rdma_info->lock);
		return rc;
	}

	rc = FUNC5(p_hwfn, &p_rdma_info->cid_map,
				    &requester_icid);

	FUNC7(&p_rdma_info->lock);
	if (rc)
		goto err;

	/* the two icid's should be adjacent */
	if ((requester_icid - responder_icid) != 1) {
		FUNC0(p_hwfn, "Failed to allocate two adjacent qp's'\n");
		rc = -EINVAL;
		goto err;
	}

	responder_icid += FUNC4(p_hwfn,
						      p_rdma_info->proto);
	requester_icid += FUNC4(p_hwfn,
						      p_rdma_info->proto);

	/* If these icids require a new ILT line allocate DMA-able context for
	 * an ILT page
	 */
	rc = FUNC3(p_hwfn, QED_ELEM_CXT, responder_icid);
	if (rc)
		goto err;

	rc = FUNC3(p_hwfn, QED_ELEM_CXT, requester_icid);
	if (rc)
		goto err;

	*cid = (u16)responder_icid;
	return rc;

err:
	FUNC6(&p_rdma_info->lock);
	FUNC2(p_hwfn, &p_rdma_info->cid_map, responder_icid);
	FUNC2(p_hwfn, &p_rdma_info->cid_map, requester_icid);

	FUNC7(&p_rdma_info->lock);
	FUNC1(p_hwfn, QED_MSG_RDMA,
		   "Allocate CID - failed, rc = %d\n", rc);
	return rc;
}