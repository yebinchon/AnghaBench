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
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  NETIF_MSG_DRV ; 
 struct qed_hwfn* FUNC2 (struct qed_dev*) ; 
 int /*<<< orphan*/  QED_NVM_CFG_GET_FLAGS ; 
 int /*<<< orphan*/  QED_NVM_CFG_GET_PF_FLAGS ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct qed_ptt* FUNC4 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_ptt*) ; 

__attribute__((used)) static int FUNC6(struct qed_dev *cdev, u8 **data,
				  u32 cmd, u32 entity_id)
{
	struct qed_hwfn *hwfn = FUNC2(cdev);
	struct qed_ptt *ptt;
	u32 flags, len;
	int rc = 0;

	ptt = FUNC4(hwfn);
	if (!ptt)
		return -EAGAIN;

	FUNC1(cdev, NETIF_MSG_DRV,
		   "Read config cmd = %d entity id %d\n", cmd, entity_id);
	flags = entity_id ? QED_NVM_CFG_GET_PF_FLAGS : QED_NVM_CFG_GET_FLAGS;
	rc = FUNC3(hwfn, ptt, cmd, entity_id, flags, *data, &len);
	if (rc)
		FUNC0(cdev, "Error %d reading %d\n", rc, cmd);

	FUNC5(hwfn, ptt);

	return rc;
}