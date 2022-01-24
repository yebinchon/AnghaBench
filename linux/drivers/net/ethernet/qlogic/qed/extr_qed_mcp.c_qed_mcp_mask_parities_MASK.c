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
typedef  scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_MASK_PARITIES ; 
 int EINVAL ; 
 scalar_t__ FW_MSG_CODE_OK ; 
 int FUNC1 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*) ; 

int FUNC2(struct qed_hwfn *p_hwfn,
			  struct qed_ptt *p_ptt, u32 mask_parities)
{
	u32 resp = 0, param = 0;
	int rc;

	rc = FUNC1(p_hwfn, p_ptt, DRV_MSG_CODE_MASK_PARITIES,
			 mask_parities, &resp, &param);

	if (rc) {
		FUNC0(p_hwfn,
		       "MCP response failure for mask parities, aborting\n");
	} else if (resp != FW_MSG_CODE_OK) {
		FUNC0(p_hwfn,
		       "MCP did not acknowledge mask parity request. Old MFW?\n");
		rc = -EINVAL;
	}

	return rc;
}