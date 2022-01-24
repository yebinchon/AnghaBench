#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/  active_wks; } ;
struct iwl_fw_runtime {TYPE_2__ dump; TYPE_3__* trans; int /*<<< orphan*/  ops_ctx; TYPE_1__* ops; } ;
struct iwl_fw_dbg_params {int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* fw_running ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_fw_runtime*,char*) ; 
 int /*<<< orphan*/  STATUS_TRANS_DEAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct iwl_fw_runtime*,struct iwl_fw_dbg_params*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_fw_runtime*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_fw_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_fw_runtime*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct iwl_fw_runtime *fwrt, u8 wk_idx)
{
	struct iwl_fw_dbg_params params = {0};

	if (!FUNC9(wk_idx, &fwrt->dump.active_wks))
		return;

	if (fwrt->ops && fwrt->ops->fw_running &&
	    !fwrt->ops->fw_running(fwrt->ops_ctx)) {
		FUNC1(fwrt, "Firmware not running - cannot dump error\n");
		FUNC6(fwrt);
		goto out;
	}

	/* there's no point in fw dump if the bus is dead */
	if (FUNC9(STATUS_TRANS_DEAD, &fwrt->trans->status)) {
		FUNC1(fwrt, "Skip fw error dump since bus is dead\n");
		goto out;
	}

	if (FUNC3(fwrt, &params, true)) {
		FUNC1(fwrt, "Failed to stop DBGC recording, aborting dump\n");
		goto out;
	}

	FUNC0(fwrt, "WRT: Data collection start\n");
	if (FUNC7(fwrt->trans))
		FUNC5(fwrt, wk_idx);
	else
		FUNC4(fwrt);
	FUNC0(fwrt, "WRT: Data collection done\n");

	FUNC3(fwrt, &params, false);

out:
	FUNC2(wk_idx, &fwrt->dump.active_wks);
}