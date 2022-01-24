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
typedef  int /*<<< orphan*/  u8 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {scalar_t__ recov_in_prog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int QED_HW_STOP_RETRY_LIMIT ; 
 int /*<<< orphan*/  TM_REG_PF_ENABLE_CONN ; 
 int /*<<< orphan*/  TM_REG_PF_ENABLE_TASK ; 
 int /*<<< orphan*/  TM_REG_PF_SCAN_ACTIVE_CONN ; 
 int /*<<< orphan*/  TM_REG_PF_SCAN_ACTIVE_TASK ; 
 scalar_t__ FUNC1 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct qed_dev *cdev,
			       struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	int i;

	/* close timers */
	FUNC2(p_hwfn, p_ptt, TM_REG_PF_ENABLE_CONN, 0x0);
	FUNC2(p_hwfn, p_ptt, TM_REG_PF_ENABLE_TASK, 0x0);

	if (cdev->recov_in_prog)
		return;

	for (i = 0; i < QED_HW_STOP_RETRY_LIMIT; i++) {
		if ((!FUNC1(p_hwfn, p_ptt,
			     TM_REG_PF_SCAN_ACTIVE_CONN)) &&
		    (!FUNC1(p_hwfn, p_ptt, TM_REG_PF_SCAN_ACTIVE_TASK)))
			break;

		/* Dependent on number of connection/tasks, possibly
		 * 1ms sleep is required between polls
		 */
		FUNC3(1000, 2000);
	}

	if (i < QED_HW_STOP_RETRY_LIMIT)
		return;

	FUNC0(p_hwfn,
		  "Timers linear scans are not over [Connection %02x Tasks %02x]\n",
		  (u8)FUNC1(p_hwfn, p_ptt, TM_REG_PF_SCAN_ACTIVE_CONN),
		  (u8)FUNC1(p_hwfn, p_ptt, TM_REG_PF_SCAN_ACTIVE_TASK));
}