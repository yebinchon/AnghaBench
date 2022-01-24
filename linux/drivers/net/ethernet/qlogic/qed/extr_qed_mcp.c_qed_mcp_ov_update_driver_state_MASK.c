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
typedef  enum qed_ov_driver_state { ____Placeholder_qed_ov_driver_state } qed_ov_driver_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*,int) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE ; 
 int /*<<< orphan*/  DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_ACTIVE ; 
 int /*<<< orphan*/  DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_DISABLED ; 
 int /*<<< orphan*/  DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_NOT_LOADED ; 
 int EINVAL ; 
#define  QED_OV_DRIVER_STATE_ACTIVE 130 
#define  QED_OV_DRIVER_STATE_DISABLED 129 
#define  QED_OV_DRIVER_STATE_NOT_LOADED 128 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct qed_hwfn *p_hwfn,
				   struct qed_ptt *p_ptt,
				   enum qed_ov_driver_state drv_state)
{
	u32 resp = 0, param = 0;
	u32 drv_mb_param;
	int rc;

	switch (drv_state) {
	case QED_OV_DRIVER_STATE_NOT_LOADED:
		drv_mb_param = DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_NOT_LOADED;
		break;
	case QED_OV_DRIVER_STATE_DISABLED:
		drv_mb_param = DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_DISABLED;
		break;
	case QED_OV_DRIVER_STATE_ACTIVE:
		drv_mb_param = DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_ACTIVE;
		break;
	default:
		FUNC1(p_hwfn, "Invalid driver state %d\n", drv_state);
		return -EINVAL;
	}

	rc = FUNC2(p_hwfn, p_ptt, DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE,
			 drv_mb_param, &resp, &param);
	if (rc)
		FUNC0(p_hwfn, "Failed to send driver state\n");

	return rc;
}