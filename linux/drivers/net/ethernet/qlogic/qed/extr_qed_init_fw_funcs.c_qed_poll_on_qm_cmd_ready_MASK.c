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
typedef  scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int /*<<< orphan*/  QM_REG_SDMCMDREADY ; 
 scalar_t__ QM_STOP_CMD_MAX_POLL_COUNT ; 
 int /*<<< orphan*/  QM_STOP_CMD_POLL_PERIOD_US ; 
 scalar_t__ FUNC1 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct qed_hwfn *p_hwfn,
				     struct qed_ptt *p_ptt)
{
	u32 reg_val, i;

	for (i = 0, reg_val = 0; i < QM_STOP_CMD_MAX_POLL_COUNT && !reg_val;
	     i++) {
		FUNC2(QM_STOP_CMD_POLL_PERIOD_US);
		reg_val = FUNC1(p_hwfn, p_ptt, QM_REG_SDMCMDREADY);
	}

	/* Check if timeout while waiting for SDM command ready */
	if (i == QM_STOP_CMD_MAX_POLL_COUNT) {
		FUNC0(p_hwfn, NETIF_MSG_HW,
			   "Timeout when waiting for QM SDM command ready signal\n");
		return false;
	}

	return true;
}