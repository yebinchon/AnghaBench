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
typedef  int u32 ;
struct devlink_health_reporter {int dummy; } ;
struct devlink_fmsg {int dummy; } ;
struct bnxt_fw_health {int dummy; } ;
struct bnxt {int /*<<< orphan*/  state; struct bnxt_fw_health* fw_health; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_FW_HEALTH_REG ; 
 int /*<<< orphan*/  BNXT_FW_RESET_CNT_REG ; 
 int BNXT_FW_STATUS_HEALTHY ; 
 int /*<<< orphan*/  BNXT_STATE_IN_FW_RESET ; 
 int FUNC0 (struct bnxt*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct devlink_fmsg*,char*,char*) ; 
 int FUNC2 (struct devlink_fmsg*,char*,int) ; 
 struct bnxt* FUNC3 (struct devlink_health_reporter*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct devlink_health_reporter *reporter,
				     struct devlink_fmsg *fmsg)
{
	struct bnxt *bp = FUNC3(reporter);
	struct bnxt_fw_health *health = bp->fw_health;
	u32 val, health_status;
	int rc;

	if (!health || FUNC4(BNXT_STATE_IN_FW_RESET, &bp->state))
		return 0;

	val = FUNC0(bp, BNXT_FW_HEALTH_REG);
	health_status = val & 0xffff;

	if (health_status < BNXT_FW_STATUS_HEALTHY) {
		rc = FUNC1(fmsg, "Description",
						  "Not yet completed initialization");
		if (rc)
			return rc;
	} else if (health_status > BNXT_FW_STATUS_HEALTHY) {
		rc = FUNC1(fmsg, "Description",
						  "Encountered fatal error and cannot recover");
		if (rc)
			return rc;
	}

	if (val >> 16) {
		rc = FUNC2(fmsg, "Error code", val >> 16);
		if (rc)
			return rc;
	}

	val = FUNC0(bp, BNXT_FW_RESET_CNT_REG);
	rc = FUNC2(fmsg, "Reset count", val);
	if (rc)
		return rc;

	return 0;
}