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
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct qed_hwfn* FUNC0 (struct qed_dev*) ; 
 struct qed_ptt* FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev)
{
	struct qed_hwfn *p_hwfn = FUNC0(cdev);
	struct qed_ptt *p_ptt;
	int rc = 0;

	p_ptt = FUNC1(p_hwfn);
	if (!p_ptt)
		return -EAGAIN;

	rc = FUNC3(p_hwfn, p_ptt);

	FUNC2(p_hwfn, p_ptt);

	return rc;
}