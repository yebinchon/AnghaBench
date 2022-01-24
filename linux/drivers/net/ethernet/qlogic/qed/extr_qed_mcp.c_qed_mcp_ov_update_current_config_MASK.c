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
typedef  enum qed_ov_client { ____Placeholder_qed_ov_client } qed_ov_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*,int) ; 
 int /*<<< orphan*/  DRV_MB_PARAM_OV_CURR_CFG_OS ; 
 int /*<<< orphan*/  DRV_MB_PARAM_OV_CURR_CFG_OTHER ; 
 int /*<<< orphan*/  DRV_MB_PARAM_OV_CURR_CFG_VENDOR_SPEC ; 
 int /*<<< orphan*/  DRV_MSG_CODE_OV_UPDATE_CURR_CFG ; 
 int EINVAL ; 
#define  QED_OV_CLIENT_DRV 130 
#define  QED_OV_CLIENT_USER 129 
#define  QED_OV_CLIENT_VENDOR_SPEC 128 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct qed_hwfn *p_hwfn,
				     struct qed_ptt *p_ptt,
				     enum qed_ov_client client)
{
	u32 resp = 0, param = 0;
	u32 drv_mb_param;
	int rc;

	switch (client) {
	case QED_OV_CLIENT_DRV:
		drv_mb_param = DRV_MB_PARAM_OV_CURR_CFG_OS;
		break;
	case QED_OV_CLIENT_USER:
		drv_mb_param = DRV_MB_PARAM_OV_CURR_CFG_OTHER;
		break;
	case QED_OV_CLIENT_VENDOR_SPEC:
		drv_mb_param = DRV_MB_PARAM_OV_CURR_CFG_VENDOR_SPEC;
		break;
	default:
		FUNC1(p_hwfn, "Invalid client type %d\n", client);
		return -EINVAL;
	}

	rc = FUNC2(p_hwfn, p_ptt, DRV_MSG_CODE_OV_UPDATE_CURR_CFG,
			 drv_mb_param, &resp, &param);
	if (rc)
		FUNC0(p_hwfn, "MCP response failure, aborting\n");

	return rc;
}