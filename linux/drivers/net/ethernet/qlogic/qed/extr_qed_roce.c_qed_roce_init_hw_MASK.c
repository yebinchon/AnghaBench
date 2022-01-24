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
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int /*<<< orphan*/  rdma_prs_search_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PROTOCOLID_ROCE ; 
 int /*<<< orphan*/  PRS_REG_LIGHT_L2_ETHERTYPE_EN ; 
 int /*<<< orphan*/  PRS_REG_ROCE_DEST_QP_MAX_PF ; 
 int /*<<< orphan*/  PRS_REG_SEARCH_ROCE ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	u32 ll2_ethertype_en;

	FUNC4(p_hwfn, p_ptt, PRS_REG_ROCE_DEST_QP_MAX_PF, 0);

	p_hwfn->rdma_prs_search_reg = PRS_REG_SEARCH_ROCE;

	ll2_ethertype_en = FUNC3(p_hwfn, p_ptt, PRS_REG_LIGHT_L2_ETHERTYPE_EN);
	FUNC4(p_hwfn, p_ptt, PRS_REG_LIGHT_L2_ETHERTYPE_EN,
	       (ll2_ethertype_en | 0x01));

	if (FUNC2(p_hwfn, PROTOCOLID_ROCE) % 2) {
		FUNC0(p_hwfn, "The first RoCE's cid should be even\n");
		return -EINVAL;
	}

	FUNC1(p_hwfn, QED_MSG_RDMA, "Initializing HW - Done\n");
	return 0;
}