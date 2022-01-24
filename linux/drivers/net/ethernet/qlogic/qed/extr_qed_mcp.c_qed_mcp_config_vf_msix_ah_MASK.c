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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_CFG_PF_VFS_MSIX ; 
 int EINVAL ; 
 scalar_t__ FW_MSG_CODE_DRV_CFG_PF_VFS_MSIX_DONE ; 
 int /*<<< orphan*/  QED_MSG_IOV ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC3(struct qed_hwfn *p_hwfn,
			  struct qed_ptt *p_ptt, u8 num)
{
	u32 resp = 0, param = num, rc_param = 0;
	int rc;

	rc = FUNC2(p_hwfn, p_ptt, DRV_MSG_CODE_CFG_PF_VFS_MSIX,
			 param, &resp, &rc_param);

	if (resp != FW_MSG_CODE_DRV_CFG_PF_VFS_MSIX_DONE) {
		FUNC0(p_hwfn, "MFW failed to set MSI-X for VFs\n");
		rc = -EINVAL;
	} else {
		FUNC1(p_hwfn, QED_MSG_IOV,
			   "Requested 0x%02x MSI-x interrupts for VFs\n", num);
	}

	return rc;
}