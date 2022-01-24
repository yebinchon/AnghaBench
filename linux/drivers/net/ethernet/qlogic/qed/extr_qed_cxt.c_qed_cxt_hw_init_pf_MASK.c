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
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_ptt*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_hwfn*) ; 

void FUNC8(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	FUNC5(p_hwfn, p_ptt, true);
	FUNC1(p_hwfn);
	FUNC2(p_hwfn);
	FUNC0(p_hwfn);
	FUNC3(p_hwfn);
	FUNC6(p_hwfn);
	FUNC7(p_hwfn);
	FUNC4(p_hwfn);
}