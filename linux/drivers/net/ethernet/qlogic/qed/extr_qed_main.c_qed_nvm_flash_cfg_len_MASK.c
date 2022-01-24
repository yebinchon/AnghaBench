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
typedef  int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,int,int) ; 
 struct qed_hwfn* FUNC1 (struct qed_dev*) ; 
 int QED_MAX_NVM_BUF_LEN ; 
 int /*<<< orphan*/  QED_NVM_CFG_GET_FLAGS ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 struct qed_ptt* FUNC3 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*) ; 

__attribute__((used)) static int FUNC5(struct qed_dev *cdev, u32 cmd)
{
	struct qed_hwfn *hwfn = FUNC1(cdev);
	u8 buf[QED_MAX_NVM_BUF_LEN];
	struct qed_ptt *ptt;
	u32 len;
	int rc;

	ptt = FUNC3(hwfn);
	if (!ptt)
		return QED_MAX_NVM_BUF_LEN;

	rc = FUNC2(hwfn, ptt, cmd, 0, QED_NVM_CFG_GET_FLAGS, buf,
				 &len);
	if (rc || !len) {
		FUNC0(cdev, "Error %d reading %d\n", rc, cmd);
		len = QED_MAX_NVM_BUF_LEN;
	}

	FUNC4(hwfn, ptt);

	return len;
}