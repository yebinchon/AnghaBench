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
typedef  int /*<<< orphan*/  u8 ;
struct qed_tunnel_info {int dummy; } ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_function_info {scalar_t__ bandwidth_min; } ;
struct TYPE_6__ {int ovlan; scalar_t__ personality; } ;
struct TYPE_5__ {int pf_rl; scalar_t__ pf_wfq; } ;
struct qed_hwfn {TYPE_3__ hw_info; TYPE_2__ qm_info; TYPE_1__* mcp_info; int /*<<< orphan*/  rel_pf_id; } ;
typedef  enum qed_int_mode { ____Placeholder_qed_int_mode } qed_int_mode ;
struct TYPE_4__ {struct qed_mcp_function_info func_info; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct qed_hwfn*) ; 
 int MODE_MF_SD ; 
 int MODE_MF_SI ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int /*<<< orphan*/  NIG_REG_LLH_FUNC_FILTER_HDR_SEL_RT_OFFSET ; 
 int /*<<< orphan*/  NIG_REG_LLH_FUNC_TAGMAC_CLS_TYPE_RT_OFFSET ; 
 int /*<<< orphan*/  NIG_REG_LLH_FUNC_TAG_EN_RT_OFFSET ; 
 int /*<<< orphan*/  NIG_REG_LLH_FUNC_TAG_VALUE_RT_OFFSET ; 
 int /*<<< orphan*/  PHASE_PF ; 
 int /*<<< orphan*/  PHASE_QM_PF ; 
 int /*<<< orphan*/  PRS_REG_PKT_LEN_STAT_TAGS_NOT_COUNTED_FIRST ; 
 int /*<<< orphan*/  PRS_REG_SEARCH_FCOE_RT_OFFSET ; 
 int /*<<< orphan*/  PRS_REG_SEARCH_ROCE_RT_OFFSET ; 
 int /*<<< orphan*/  PRS_REG_SEARCH_TAG1 ; 
 int /*<<< orphan*/  PRS_REG_SEARCH_TCP_RT_OFFSET ; 
 scalar_t__ QED_PCI_FCOE ; 
 scalar_t__ QED_PCI_ISCSI ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC6 (struct qed_hwfn*,struct qed_ptt*,char*) ; 
 int FUNC7 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC8 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qed_hwfn*,struct qed_ptt*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct qed_hwfn*,struct qed_ptt*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qed_hwfn*) ; 
 int FUNC12 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC13 (struct qed_hwfn*,struct qed_ptt*,struct qed_tunnel_info*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct qed_hwfn *p_hwfn,
			  struct qed_ptt *p_ptt,
			  struct qed_tunnel_info *p_tunn,
			  int hw_mode,
			  bool b_hw_start,
			  enum qed_int_mode int_mode,
			  bool allow_npar_tx_switch)
{
	u8 rel_pf_id = p_hwfn->rel_pf_id;
	int rc = 0;

	if (p_hwfn->mcp_info) {
		struct qed_mcp_function_info *p_info;

		p_info = &p_hwfn->mcp_info->func_info;
		if (p_info->bandwidth_min)
			p_hwfn->qm_info.pf_wfq = p_info->bandwidth_min;

		/* Update rate limit once we'll actually have a link */
		p_hwfn->qm_info.pf_rl = 100000;
	}

	FUNC5(p_hwfn, p_ptt);

	FUNC11(p_hwfn);

	/* Set VLAN in NIG if needed */
	if (hw_mode & FUNC0(MODE_MF_SD)) {
		FUNC2(p_hwfn, NETIF_MSG_HW, "Configuring LLH_FUNC_TAG\n");
		FUNC4(p_hwfn, NIG_REG_LLH_FUNC_TAG_EN_RT_OFFSET, 1);
		FUNC4(p_hwfn, NIG_REG_LLH_FUNC_TAG_VALUE_RT_OFFSET,
			     p_hwfn->hw_info.ovlan);

		FUNC2(p_hwfn, NETIF_MSG_HW,
			   "Configuring LLH_FUNC_FILTER_HDR_SEL\n");
		FUNC4(p_hwfn, NIG_REG_LLH_FUNC_FILTER_HDR_SEL_RT_OFFSET,
			     1);
	}

	/* Enable classification by MAC if needed */
	if (hw_mode & FUNC0(MODE_MF_SI)) {
		FUNC2(p_hwfn, NETIF_MSG_HW,
			   "Configuring TAGMAC_CLS_TYPE\n");
		FUNC4(p_hwfn,
			     NIG_REG_LLH_FUNC_TAGMAC_CLS_TYPE_RT_OFFSET, 1);
	}

	/* Protocol Configuration */
	FUNC4(p_hwfn, PRS_REG_SEARCH_TCP_RT_OFFSET,
		     (p_hwfn->hw_info.personality == QED_PCI_ISCSI) ? 1 : 0);
	FUNC4(p_hwfn, PRS_REG_SEARCH_FCOE_RT_OFFSET,
		     (p_hwfn->hw_info.personality == QED_PCI_FCOE) ? 1 : 0);
	FUNC4(p_hwfn, PRS_REG_SEARCH_ROCE_RT_OFFSET, 0);

	/* Sanity check before the PF init sequence that uses DMAE */
	rc = FUNC6(p_hwfn, p_ptt, "pf_phase");
	if (rc)
		return rc;

	/* PF Init sequence */
	rc = FUNC8(p_hwfn, p_ptt, PHASE_PF, rel_pf_id, hw_mode);
	if (rc)
		return rc;

	/* QM_PF Init sequence (may be invoked separately e.g. for DCB) */
	rc = FUNC8(p_hwfn, p_ptt, PHASE_QM_PF, rel_pf_id, hw_mode);
	if (rc)
		return rc;

	/* Pure runtime initializations - directly to the HW  */
	FUNC10(p_hwfn, p_ptt, true, true);

	rc = FUNC7(p_hwfn, p_ptt);
	if (rc)
		return rc;

	/* Use the leading hwfn since in CMT only NIG #0 is operational */
	if (FUNC3(p_hwfn)) {
		rc = FUNC12(p_hwfn, p_ptt);
		if (rc)
			return rc;
	}

	if (b_hw_start) {
		/* enable interrupts */
		FUNC9(p_hwfn, p_ptt, int_mode);

		/* send function start command */
		rc = FUNC13(p_hwfn, p_ptt, p_tunn,
				     allow_npar_tx_switch);
		if (rc) {
			FUNC1(p_hwfn, "Function start ramrod failed\n");
			return rc;
		}
		if (p_hwfn->hw_info.personality == QED_PCI_FCOE) {
			FUNC14(p_hwfn, p_ptt, PRS_REG_SEARCH_TAG1, FUNC0(2));
			FUNC14(p_hwfn, p_ptt,
			       PRS_REG_PKT_LEN_STAT_TAGS_NOT_COUNTED_FIRST,
			       0x100);
		}
	}
	return rc;
}