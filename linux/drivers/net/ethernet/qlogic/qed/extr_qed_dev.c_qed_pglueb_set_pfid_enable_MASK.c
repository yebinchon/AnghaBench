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
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ; 
 int FUNC1 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(struct qed_hwfn *p_hwfn,
			       struct qed_ptt *p_ptt, bool b_enable)
{
	u32 delay_idx = 0, val, set_val = b_enable ? 1 : 0;

	/* Configure the PF's internal FID_enable for master transactions */
	FUNC2(p_hwfn, p_ptt, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, set_val);

	/* Wait until value is set - try for 1 second every 50us */
	for (delay_idx = 0; delay_idx < 20000; delay_idx++) {
		val = FUNC1(p_hwfn, p_ptt,
			     PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER);
		if (val == set_val)
			break;

		FUNC3(50, 60);
	}

	if (val != set_val) {
		FUNC0(p_hwfn,
			  "PFID_ENABLE_MASTER wasn't changed after a second\n");
		return -EAGAIN;
	}

	return 0;
}