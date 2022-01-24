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
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*) ; 

__attribute__((used)) static void FUNC6(struct qed_hwfn *p_hwfn)
{
	/* reset params required for init run */
	FUNC4(p_hwfn);

	/* init QM top level params */
	FUNC1(p_hwfn);

	/* init QM port params */
	FUNC2(p_hwfn);

	/* init QM vport params */
	FUNC5(p_hwfn);

	/* init QM physical queue params */
	FUNC3(p_hwfn);

	/* display all that init */
	FUNC0(p_hwfn);
}