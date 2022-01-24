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
struct qed_ptt {int dummy; } ;
struct qed_hwfn {struct qed_ptt* p_ptp_ptt; } ;
struct qed_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIG_REG_LLH_PTP_PARAM_MASK ; 
 int /*<<< orphan*/  NIG_REG_LLH_PTP_RULE_MASK ; 
 int /*<<< orphan*/  NIG_REG_RX_PTP_EN ; 
 int /*<<< orphan*/  NIG_REG_TX_LLH_PTP_PARAM_MASK ; 
 int /*<<< orphan*/  NIG_REG_TX_LLH_PTP_RULE_MASK ; 
 int /*<<< orphan*/  NIG_REG_TX_PTP_EN ; 
 struct qed_hwfn* FUNC0 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev)
{
	struct qed_hwfn *p_hwfn = FUNC0(cdev);
	struct qed_ptt *p_ptt = p_hwfn->p_ptp_ptt;

	FUNC1(p_hwfn, p_ptt);

	/* Reset PTP event detection rules */
	FUNC3(p_hwfn, p_ptt, NIG_REG_LLH_PTP_PARAM_MASK, 0x7FF);
	FUNC3(p_hwfn, p_ptt, NIG_REG_LLH_PTP_RULE_MASK, 0x3FFF);

	FUNC3(p_hwfn, p_ptt, NIG_REG_TX_LLH_PTP_PARAM_MASK, 0x7FF);
	FUNC3(p_hwfn, p_ptt, NIG_REG_TX_LLH_PTP_RULE_MASK, 0x3FFF);

	/* Disable the PTP feature */
	FUNC3(p_hwfn, p_ptt, NIG_REG_RX_PTP_EN, 0x0);
	FUNC3(p_hwfn, p_ptt, NIG_REG_TX_PTP_EN, 0x0);

	FUNC2(p_hwfn, p_ptt);
	p_hwfn->p_ptp_ptt = NULL;

	return 0;
}