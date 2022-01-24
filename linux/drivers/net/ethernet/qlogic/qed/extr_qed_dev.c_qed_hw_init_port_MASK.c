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
struct qed_hwfn {int /*<<< orphan*/  port_id; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  NIG_REG_BRB_GATE_DNTFWD_PORT_RT_OFFSET ; 
 int /*<<< orphan*/  PGLUE_B_REG_MASTER_WRITE_PAD_ENABLE ; 
 int /*<<< orphan*/  PHASE_PORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct qed_hwfn *p_hwfn,
			    struct qed_ptt *p_ptt, int hw_mode)
{
	int rc = 0;

	/* In CMT the gate should be cleared by the 2nd hwfn */
	if (!FUNC1(p_hwfn->cdev) || !FUNC0(p_hwfn))
		FUNC2(p_hwfn, NIG_REG_BRB_GATE_DNTFWD_PORT_RT_OFFSET, 0);

	rc = FUNC3(p_hwfn, p_ptt, PHASE_PORT, p_hwfn->port_id, hw_mode);
	if (rc)
		return rc;

	FUNC4(p_hwfn, p_ptt, PGLUE_B_REG_MASTER_WRITE_PAD_ENABLE, 0);

	return 0;
}