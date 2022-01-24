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
struct qed_hwfn {int /*<<< orphan*/  cdev; struct qed_ptt* p_ptp_ptt; } ;
struct qed_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  NIG_REG_LLH_PTP_HOST_BUF_SEQID ; 
 int /*<<< orphan*/  NIG_REG_LLH_PTP_PARAM_MASK ; 
 int /*<<< orphan*/  NIG_REG_LLH_PTP_RULE_MASK ; 
 int /*<<< orphan*/  NIG_REG_PTP_LATCH_OSTS_PKT_TIME ; 
 int /*<<< orphan*/  NIG_REG_RX_PTP_EN ; 
 int /*<<< orphan*/  NIG_REG_TIMESYNC_GEN_REG_BB ; 
 int /*<<< orphan*/  NIG_REG_TSGEN_DRIFT_CNTR_CONF ; 
 int /*<<< orphan*/  NIG_REG_TSGEN_FREECNT_UPDATE_K2 ; 
 int /*<<< orphan*/  NIG_REG_TSGEN_FREE_CNT_VALUE_LSB ; 
 int /*<<< orphan*/  NIG_REG_TSGEN_FREE_CNT_VALUE_MSB ; 
 int /*<<< orphan*/  NIG_REG_TSGEN_RST_DRIFT_CNTR ; 
 int /*<<< orphan*/  NIG_REG_TS_OUTPUT_ENABLE_PDA ; 
 int /*<<< orphan*/  NIG_REG_TX_LLH_PTP_BUF_SEQID ; 
 int /*<<< orphan*/  NIG_REG_TX_LLH_PTP_PARAM_MASK ; 
 int /*<<< orphan*/  NIG_REG_TX_LLH_PTP_RULE_MASK ; 
 int /*<<< orphan*/  NIG_REG_TX_PTP_EN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct qed_hwfn* FUNC4 (struct qed_dev*) ; 
 int QED_TIMESTAMP_MASK ; 
 int FUNC5 (struct qed_hwfn*,struct qed_ptt*) ; 
 struct qed_ptt* FUNC6 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC8 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct qed_dev *cdev)
{
	struct qed_hwfn *p_hwfn = FUNC4(cdev);
	struct qed_ptt *p_ptt;
	int rc;

	p_ptt = FUNC6(p_hwfn);
	if (!p_ptt) {
		FUNC1(p_hwfn, "Failed to acquire PTT for PTP\n");
		return -EBUSY;
	}

	p_hwfn->p_ptp_ptt = p_ptt;

	rc = FUNC5(p_hwfn, p_ptt);
	if (rc) {
		FUNC0(p_hwfn,
			"Couldn't acquire the resource lock, skip ptp enable for this PF\n");
		FUNC7(p_hwfn, p_ptt);
		p_hwfn->p_ptp_ptt = NULL;
		return rc;
	}

	/* Reset PTP event detection rules - will be configured in the IOCTL */
	FUNC8(p_hwfn, p_ptt, NIG_REG_LLH_PTP_PARAM_MASK, 0x7FF);
	FUNC8(p_hwfn, p_ptt, NIG_REG_LLH_PTP_RULE_MASK, 0x3FFF);
	FUNC8(p_hwfn, p_ptt, NIG_REG_TX_LLH_PTP_PARAM_MASK, 0x7FF);
	FUNC8(p_hwfn, p_ptt, NIG_REG_TX_LLH_PTP_RULE_MASK, 0x3FFF);

	FUNC8(p_hwfn, p_ptt, NIG_REG_TX_PTP_EN, 7);
	FUNC8(p_hwfn, p_ptt, NIG_REG_RX_PTP_EN, 7);

	FUNC8(p_hwfn, p_ptt, NIG_REG_TS_OUTPUT_ENABLE_PDA, 0x1);

	/* Pause free running counter */
	if (FUNC3(p_hwfn->cdev))
		FUNC8(p_hwfn, p_ptt, NIG_REG_TIMESYNC_GEN_REG_BB, 2);
	if (FUNC2(p_hwfn->cdev))
		FUNC8(p_hwfn, p_ptt, NIG_REG_TSGEN_FREECNT_UPDATE_K2, 2);

	FUNC8(p_hwfn, p_ptt, NIG_REG_TSGEN_FREE_CNT_VALUE_LSB, 0);
	FUNC8(p_hwfn, p_ptt, NIG_REG_TSGEN_FREE_CNT_VALUE_MSB, 0);
	/* Resume free running counter */
	if (FUNC3(p_hwfn->cdev))
		FUNC8(p_hwfn, p_ptt, NIG_REG_TIMESYNC_GEN_REG_BB, 4);
	if (FUNC2(p_hwfn->cdev)) {
		FUNC8(p_hwfn, p_ptt, NIG_REG_TSGEN_FREECNT_UPDATE_K2, 4);
		FUNC8(p_hwfn, p_ptt, NIG_REG_PTP_LATCH_OSTS_PKT_TIME, 1);
	}

	/* Disable drift register */
	FUNC8(p_hwfn, p_ptt, NIG_REG_TSGEN_DRIFT_CNTR_CONF, 0x0);
	FUNC8(p_hwfn, p_ptt, NIG_REG_TSGEN_RST_DRIFT_CNTR, 0x0);

	/* Reset possibly old timestamps */
	FUNC8(p_hwfn, p_ptt, NIG_REG_LLH_PTP_HOST_BUF_SEQID,
	       QED_TIMESTAMP_MASK);
	FUNC8(p_hwfn, p_ptt, NIG_REG_TX_LLH_PTP_BUF_SEQID, QED_TIMESTAMP_MASK);

	return 0;
}