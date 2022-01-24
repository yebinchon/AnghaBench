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
struct qed_hwfn {int b_int_requested; int b_int_enabled; } ;
typedef  enum qed_int_mode { ____Placeholder_qed_int_mode } qed_int_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct qed_hwfn*) ; 
 int QED_INT_MODE_INTA ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*,int) ; 
 int FUNC4 (struct qed_hwfn*) ; 

int
FUNC5(struct qed_hwfn *p_hwfn,
		   struct qed_ptt *p_ptt, enum qed_int_mode int_mode)
{
	int rc = 0;

	FUNC2(p_hwfn, p_ptt);

	if ((int_mode != QED_INT_MODE_INTA) || FUNC1(p_hwfn)) {
		rc = FUNC4(p_hwfn);
		if (rc) {
			FUNC0(p_hwfn, "Slowpath IRQ request failed\n");
			return -EINVAL;
		}
		p_hwfn->b_int_requested = true;
	}
	/* Enable interrupt Generation */
	FUNC3(p_hwfn, p_ptt, int_mode);
	p_hwfn->b_int_enabled = 1;

	return rc;
}