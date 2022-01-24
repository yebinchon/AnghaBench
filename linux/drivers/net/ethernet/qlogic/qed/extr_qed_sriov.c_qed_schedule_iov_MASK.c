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
struct qed_hwfn {int /*<<< orphan*/  iov_task; int /*<<< orphan*/  iov_wq; int /*<<< orphan*/  iov_task_flags; } ;
typedef  enum qed_iov_wq_flag { ____Placeholder_qed_iov_wq_flag } qed_iov_wq_flag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  QED_MSG_IOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct qed_hwfn *hwfn, enum qed_iov_wq_flag flag)
{
	FUNC4();
	FUNC2(flag, &hwfn->iov_task_flags);
	FUNC3();
	FUNC0(hwfn, QED_MSG_IOV, "Scheduling iov task [Flag: %d]\n", flag);
	FUNC1(hwfn->iov_wq, &hwfn->iov_task, 0);
}