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
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qed_dev *cdev)
{
	if (!cdev)
		return;

	FUNC3(cdev);

	FUNC2(cdev);

	FUNC4(cdev, PCI_D3hot);

	FUNC0(cdev);

	FUNC1(cdev);
}