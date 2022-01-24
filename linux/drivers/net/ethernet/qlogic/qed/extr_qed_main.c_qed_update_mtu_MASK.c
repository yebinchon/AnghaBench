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
typedef  int /*<<< orphan*/  u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct qed_dev*) ; 
 struct qed_hwfn* FUNC1 (struct qed_dev*) ; 
 int /*<<< orphan*/  QED_OV_CLIENT_DRV ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 struct qed_ptt* FUNC4 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_ptt*) ; 

__attribute__((used)) static int FUNC6(struct qed_dev *cdev, u16 mtu)
{
	struct qed_hwfn *hwfn = FUNC1(cdev);
	struct qed_ptt *ptt;
	int status = 0;

	if (FUNC0(cdev))
		return 0;

	ptt = FUNC4(hwfn);
	if (!ptt)
		return -EAGAIN;

	status = FUNC3(hwfn, ptt, mtu);
	if (status)
		goto out;

	status = FUNC2(hwfn, ptt, QED_OV_CLIENT_DRV);

out:
	FUNC5(hwfn, ptt);
	return status;
}