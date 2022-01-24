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
struct qed_ptt {int dummy; } ;
struct TYPE_4__ {scalar_t__ ovlan; int personality; int multi_tc_roce_en; int num_active_tc; int /*<<< orphan*/  mtu; int /*<<< orphan*/  num_hw_tc; int /*<<< orphan*/  hw_mac_addr; } ;
struct qed_hwfn {TYPE_3__* mcp_info; TYPE_1__ hw_info; } ;
typedef  enum qed_pci_personality { ____Placeholder_qed_pci_personality } qed_pci_personality ;
struct TYPE_5__ {scalar_t__ ovlan; int protocol; int /*<<< orphan*/  mtu; int /*<<< orphan*/  mac; } ;
struct TYPE_6__ {TYPE_2__ func_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  NUM_PHYS_TCS_4PORT_K2 ; 
 scalar_t__ FUNC1 (struct qed_hwfn*) ; 
 scalar_t__ QED_MCP_VLAN_UNSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC7 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC8 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC9 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC10 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC11 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC12 (struct qed_hwfn*,struct qed_ptt*) ; 
 scalar_t__ FUNC13 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC14 (struct qed_hwfn*,struct qed_ptt*) ; 

__attribute__((used)) static int
FUNC15(struct qed_hwfn *p_hwfn,
		struct qed_ptt *p_ptt,
		enum qed_pci_personality personality)
{
	int rc;

	/* Since all information is common, only first hwfns should do this */
	if (FUNC0(p_hwfn)) {
		rc = FUNC10(p_hwfn);
		if (rc)
			return rc;
	}

	if (FUNC0(p_hwfn))
		FUNC8(p_hwfn, p_ptt);

	FUNC12(p_hwfn, p_ptt);

	FUNC6(p_hwfn, p_ptt);

	rc = FUNC9(p_hwfn, p_ptt);
	if (rc)
		return rc;

	if (FUNC13(p_hwfn))
		FUNC3(p_hwfn->hw_info.hw_mac_addr,
				p_hwfn->mcp_info->func_info.mac);
	else
		FUNC2(p_hwfn->hw_info.hw_mac_addr);

	if (FUNC13(p_hwfn)) {
		if (p_hwfn->mcp_info->func_info.ovlan != QED_MCP_VLAN_UNSET)
			p_hwfn->hw_info.ovlan =
				p_hwfn->mcp_info->func_info.ovlan;

		FUNC11(p_hwfn, p_ptt);

		FUNC4(p_hwfn, p_ptt);

		FUNC14(p_hwfn, p_ptt);
	}

	if (FUNC13(p_hwfn)) {
		enum qed_pci_personality protocol;

		protocol = p_hwfn->mcp_info->func_info.protocol;
		p_hwfn->hw_info.personality = protocol;
	}

	if (FUNC1(p_hwfn))
		p_hwfn->hw_info.multi_tc_roce_en = 1;

	p_hwfn->hw_info.num_hw_tc = NUM_PHYS_TCS_4PORT_K2;
	p_hwfn->hw_info.num_active_tc = 1;

	FUNC5(p_hwfn, p_ptt);

	if (FUNC13(p_hwfn))
		p_hwfn->hw_info.mtu = p_hwfn->mcp_info->func_info.mtu;

	return FUNC7(p_hwfn, p_ptt);
}