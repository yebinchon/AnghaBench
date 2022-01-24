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
struct qed_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,int /*<<< orphan*/ ,char*) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*) ; 
 int /*<<< orphan*/  QED_MSG_IOV ; 
 int FUNC2 (struct qed_dev*,int) ; 
 int FUNC3 (struct qed_dev*,int) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev, int num_vfs_param)
{
	if (!FUNC1(cdev)) {
		FUNC0(cdev, QED_MSG_IOV, "SR-IOV is not supported\n");
		return -EOPNOTSUPP;
	}

	if (num_vfs_param)
		return FUNC3(cdev, num_vfs_param);
	else
		return FUNC2(cdev, true);
}