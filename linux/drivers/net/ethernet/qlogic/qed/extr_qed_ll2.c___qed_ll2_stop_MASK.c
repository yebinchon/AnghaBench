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
struct qed_hwfn {struct qed_dev* cdev; } ;
struct qed_dev {TYPE_1__* ll2; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qed_hwfn *p_hwfn)
{
	struct qed_dev *cdev = p_hwfn->cdev;
	int rc;

	rc = FUNC2(p_hwfn, cdev->ll2->handle);
	if (rc)
		FUNC0(cdev, "Failed to terminate LL2 connection\n");

	FUNC1(p_hwfn, cdev->ll2->handle);

	return rc;
}