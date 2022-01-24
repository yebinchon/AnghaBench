#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qed_dev {int num_hwfns; int /*<<< orphan*/  firmware; } ;
struct TYPE_3__ {int /*<<< orphan*/  p_arfs_ptt; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct qed_dev*) ; 
 scalar_t__ FUNC1 (struct qed_dev*) ; 
 TYPE_1__* FUNC2 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct qed_dev*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct qed_dev *cdev)
{
	if (!cdev)
		return -ENODEV;

	FUNC11(cdev);

	FUNC6(cdev);

	if (FUNC0(cdev)) {
		if (cdev->num_hwfns == 1)
			FUNC8(FUNC2(cdev),
					FUNC2(cdev)->p_arfs_ptt);
		FUNC4(cdev);
		if (FUNC1(cdev))
			FUNC12(cdev, true);
	}

	FUNC7(cdev);

	if (FUNC0(cdev))
		FUNC10(cdev);

	FUNC3(cdev);

	FUNC9(cdev);

	FUNC5(cdev, true);

	if (FUNC0(cdev))
		FUNC13(cdev->firmware);

	return 0;
}