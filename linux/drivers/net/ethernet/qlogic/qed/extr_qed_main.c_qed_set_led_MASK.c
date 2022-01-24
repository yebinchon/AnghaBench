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
typedef  enum qed_led_mode { ____Placeholder_qed_led_mode } qed_led_mode ;

/* Variables and functions */
 int EAGAIN ; 
 struct qed_hwfn* FUNC0 (struct qed_dev*) ; 
 int FUNC1 (struct qed_hwfn*,struct qed_ptt*,int) ; 
 struct qed_ptt* FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev, enum qed_led_mode mode)
{
	struct qed_hwfn *hwfn = FUNC0(cdev);
	struct qed_ptt *ptt;
	int status = 0;

	ptt = FUNC2(hwfn);
	if (!ptt)
		return -EAGAIN;

	status = FUNC1(hwfn, ptt, mode);

	FUNC3(hwfn, ptt);

	return status;
}