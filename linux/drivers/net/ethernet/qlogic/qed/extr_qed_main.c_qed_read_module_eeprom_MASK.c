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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 
 struct qed_hwfn* FUNC2 (struct qed_dev*) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct qed_ptt* FUNC4 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_ptt*) ; 

__attribute__((used)) static int FUNC6(struct qed_dev *cdev, char *buf,
				  u8 dev_addr, u32 offset, u32 len)
{
	struct qed_hwfn *hwfn = FUNC2(cdev);
	struct qed_ptt *ptt;
	int rc = 0;

	if (FUNC0(cdev))
		return 0;

	ptt = FUNC4(hwfn);
	if (!ptt)
		return -EAGAIN;

	rc = FUNC3(hwfn, ptt, FUNC1(hwfn), dev_addr,
				  offset, len, buf);

	FUNC5(hwfn, ptt);

	return rc;
}