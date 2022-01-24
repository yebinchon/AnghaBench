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
typedef  int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dcbx_no_edpm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,struct qed_ptt*) ; 

void FUNC2(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	u8 val;

	/* if any QPs are already active, we want to disable DPM, since their
	 * context information contains information from before the latest DCBx
	 * update. Otherwise enable it.
	 */
	val = FUNC0(p_hwfn) ? true : false;
	p_hwfn->dcbx_no_edpm = (u8)val;

	FUNC1(p_hwfn, p_ptt);
}