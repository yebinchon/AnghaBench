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
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int /*<<< orphan*/  mcp_nvm_resp; } ;

/* Variables and functions */
 int EBUSY ; 
 struct qed_hwfn* FUNC0 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct qed_ptt* FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*) ; 

int FUNC4(struct qed_dev *cdev, u8 *p_buf)
{
	struct qed_hwfn *p_hwfn = FUNC0(cdev);
	struct qed_ptt *p_ptt;

	p_ptt = FUNC2(p_hwfn);
	if (!p_ptt)
		return -EBUSY;

	FUNC1(p_buf, &cdev->mcp_nvm_resp, sizeof(cdev->mcp_nvm_resp));
	FUNC3(p_hwfn, p_ptt);

	return 0;
}