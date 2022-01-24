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
typedef  int /*<<< orphan*/  u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct qed_dev*) ; 
 struct qed_hwfn* FUNC1 (struct qed_dev*) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qed_ptt* FUNC3 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*) ; 

__attribute__((used)) static int FUNC5(struct qed_dev *cdev, u32 cfg_id, u32 val)
{
	struct qed_hwfn *hwfn = FUNC1(cdev);
	struct qed_ptt *ptt;
	int rc = 0;

	if (FUNC0(cdev))
		return 0;

	ptt = FUNC3(hwfn);
	if (!ptt)
		return -EAGAIN;

	rc = FUNC2(hwfn, ptt, cfg_id, val);

	FUNC4(hwfn, ptt);

	return rc;
}