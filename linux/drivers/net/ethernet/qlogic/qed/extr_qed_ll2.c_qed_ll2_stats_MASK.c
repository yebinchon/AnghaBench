#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qed_ll2_stats {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {TYPE_1__* ll2; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int EINVAL ; 
 struct qed_hwfn* FUNC1 (struct qed_dev*) ; 
 struct qed_hwfn* FUNC2 (struct qed_dev*) ; 
 int FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ,struct qed_ll2_stats*) ; 
 int FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ ,struct qed_ll2_stats*) ; 
 int FUNC5 (struct qed_dev*) ; 

__attribute__((used)) static int FUNC6(struct qed_dev *cdev, struct qed_ll2_stats *stats)
{
	bool b_is_storage_eng1 = FUNC5(cdev);
	struct qed_hwfn *p_hwfn = FUNC1(cdev);
	int rc;

	if (!cdev->ll2)
		return -EINVAL;

	rc = FUNC4(p_hwfn, cdev->ll2->handle, stats);
	if (rc) {
		FUNC0(p_hwfn, "Failed to get LL2 stats\n");
		return rc;
	}

	/* In CMT mode, LL2 is always started on engine 0 for a storage PF */
	if (b_is_storage_eng1) {
		rc = FUNC3(FUNC2(cdev),
					 cdev->ll2->handle, stats);
		if (rc) {
			FUNC0(FUNC2(cdev),
				  "Failed to get LL2 stats on engine 0\n");
			return rc;
		}
	}

	return 0;
}