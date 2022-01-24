#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qed_hwfn {int using_ll2; } ;
struct qed_dev {int num_hwfns; struct qed_hwfn* hwfns; } ;
struct TYPE_3__ {scalar_t__ personality; } ;
struct TYPE_4__ {TYPE_1__ hw_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*) ; 
 TYPE_2__* FUNC1 (struct qed_dev*) ; 
 scalar_t__ QED_PCI_ETH ; 
 int FUNC2 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_dev*) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev)
{
	int rc, i;

	/* Determine if interface is going to require LL2 */
	if (FUNC1(cdev)->hw_info.personality != QED_PCI_ETH) {
		for (i = 0; i < cdev->num_hwfns; i++) {
			struct qed_hwfn *p_hwfn = &cdev->hwfns[i];

			p_hwfn->using_ll2 = true;
		}
	}

	rc = FUNC2(cdev);
	if (rc)
		return rc;

	FUNC0(cdev, "Allocated qed resources\n");

	FUNC3(cdev);

	return rc;
}