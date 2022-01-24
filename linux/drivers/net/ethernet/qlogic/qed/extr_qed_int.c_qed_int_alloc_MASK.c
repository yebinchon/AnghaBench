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
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC1 (struct qed_hwfn*) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*) ; 

int FUNC3(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	int rc = 0;

	rc = FUNC1(p_hwfn);
	if (rc)
		return rc;

	rc = FUNC2(p_hwfn, p_ptt);
	if (rc)
		return rc;

	rc = FUNC0(p_hwfn, p_ptt);

	return rc;
}