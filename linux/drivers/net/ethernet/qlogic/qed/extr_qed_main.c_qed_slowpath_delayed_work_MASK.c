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
struct qed_hwfn {int /*<<< orphan*/  slowpath_task; int /*<<< orphan*/  slowpath_wq; int /*<<< orphan*/  slowpath_task_flags; int /*<<< orphan*/  slowpath_wq_active; } ;
typedef  enum qed_slowpath_wq_flag { ____Placeholder_qed_slowpath_wq_flag } qed_slowpath_wq_flag ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct qed_hwfn *hwfn,
				     enum qed_slowpath_wq_flag wq_flag,
				     unsigned long delay)
{
	if (!hwfn->slowpath_wq_active)
		return -EINVAL;

	/* Memory barrier for setting atomic bit */
	FUNC3();
	FUNC1(wq_flag, &hwfn->slowpath_task_flags);
	FUNC2();
	FUNC0(hwfn->slowpath_wq, &hwfn->slowpath_task, delay);

	return 0;
}