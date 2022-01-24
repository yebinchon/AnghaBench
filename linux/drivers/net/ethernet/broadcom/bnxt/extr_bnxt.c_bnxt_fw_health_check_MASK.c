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
struct bnxt_fw_health {scalar_t__ last_fw_heartbeat; scalar_t__ last_fw_reset_cnt; scalar_t__ tmr_multiplier; scalar_t__ tmr_counter; int /*<<< orphan*/  enabled; } ;
struct bnxt {int /*<<< orphan*/  sp_event; int /*<<< orphan*/  state; struct bnxt_fw_health* fw_health; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_FW_EXCEPTION_SP_EVENT ; 
 int /*<<< orphan*/  BNXT_FW_HEARTBEAT_REG ; 
 int /*<<< orphan*/  BNXT_FW_RESET_CNT_REG ; 
 int /*<<< orphan*/  BNXT_STATE_IN_FW_RESET ; 
 scalar_t__ FUNC0 (struct bnxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bnxt *bp)
{
	struct bnxt_fw_health *fw_health = bp->fw_health;
	u32 val;

	if (!fw_health || !fw_health->enabled ||
	    FUNC3(BNXT_STATE_IN_FW_RESET, &bp->state))
		return;

	if (fw_health->tmr_counter) {
		fw_health->tmr_counter--;
		return;
	}

	val = FUNC0(bp, BNXT_FW_HEARTBEAT_REG);
	if (val == fw_health->last_fw_heartbeat)
		goto fw_reset;

	fw_health->last_fw_heartbeat = val;

	val = FUNC0(bp, BNXT_FW_RESET_CNT_REG);
	if (val != fw_health->last_fw_reset_cnt)
		goto fw_reset;

	fw_health->tmr_counter = fw_health->tmr_multiplier;
	return;

fw_reset:
	FUNC2(BNXT_FW_EXCEPTION_SP_EVENT, &bp->sp_event);
	FUNC1(bp);
}