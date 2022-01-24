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
struct qed_hwfn {int dummy; } ;
struct qed_dev {TYPE_1__* ll2; int /*<<< orphan*/  ll2_mac_address; } ;
struct TYPE_2__ {scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 struct qed_hwfn* FUNC1 (struct qed_dev*) ; 
 scalar_t__ FUNC2 (struct qed_hwfn*) ; 
 struct qed_hwfn* FUNC3 (struct qed_dev*) ; 
 scalar_t__ QED_LL2_UNUSED_HANDLE ; 
 int FUNC4 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC9 (struct qed_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct qed_dev *cdev)
{
	bool b_is_storage_eng1 = FUNC6(cdev);
	struct qed_hwfn *p_hwfn = FUNC1(cdev);
	int rc = 0, rc2 = 0;

	if (cdev->ll2->handle == QED_LL2_UNUSED_HANDLE)
		return 0;

	FUNC9(cdev, 0, cdev->ll2_mac_address);
	FUNC5(cdev->ll2_mac_address);

	if (FUNC2(p_hwfn))
		FUNC8(p_hwfn);

	/* In CMT mode, LL2 is always started on engine 0 for a storage PF */
	if (b_is_storage_eng1) {
		rc2 = FUNC4(FUNC3(cdev));
		if (rc2)
			FUNC0(FUNC3(cdev),
				  "Failed to stop LL2 on engine 0\n");
	}

	rc = FUNC4(p_hwfn);
	if (rc)
		FUNC0(p_hwfn, "Failed to stop LL2\n");

	FUNC7(cdev);

	cdev->ll2->handle = QED_LL2_UNUSED_HANDLE;

	return rc | rc2;
}