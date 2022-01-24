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
typedef  scalar_t__ u32 ;
struct TYPE_6__ {unsigned long active_wks; TYPE_2__* wks; struct iwl_fw_ini_active_triggers* active_trigs; } ;
struct iwl_fw_runtime {TYPE_3__ dump; int /*<<< orphan*/  trans; } ;
struct iwl_fw_ini_active_triggers {TYPE_1__* trig; } ;
typedef  enum iwl_fw_ini_trigger_id { ____Placeholder_iwl_fw_ini_trigger_id } iwl_fw_ini_trigger_id ;
struct TYPE_5__ {int ini_trig_id; int /*<<< orphan*/  wk; int /*<<< orphan*/  idx; } ;
struct TYPE_4__ {int /*<<< orphan*/  force_restart; int /*<<< orphan*/  occurrences; int /*<<< orphan*/  dump_delay; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 unsigned long IWL_FW_RUNTIME_DUMP_WK_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 unsigned long FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_fw_runtime*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

int FUNC10(struct iwl_fw_runtime *fwrt,
			    enum iwl_fw_ini_trigger_id id)
{
	struct iwl_fw_ini_active_triggers *active;
	u32 occur, delay;
	unsigned long idx;

	if (FUNC1(!FUNC5(fwrt, id)))
		return -EINVAL;

	if (!FUNC5(fwrt, id)) {
		FUNC0(fwrt, "WRT: Trigger %d is not active, aborting dump\n",
			 id);
		return -EINVAL;
	}

	active = &fwrt->dump.active_trigs[id];
	delay = FUNC6(active->trig->dump_delay);
	occur = FUNC6(active->trig->occurrences);
	if (!occur)
		return 0;

	active->trig->occurrences = FUNC2(--occur);

	if (FUNC6(active->trig->force_restart)) {
		FUNC0(fwrt, "WRT: Force restart: trigger %d fired.\n", id);
		FUNC4(fwrt->trans);
		return 0;
	}

	/* Check there is an available worker.
	 * ffz return value is undefined if no zero exists,
	 * so check against ~0UL first.
	 */
	if (fwrt->dump.active_wks == ~0UL)
		return -EBUSY;

	idx = FUNC3(fwrt->dump.active_wks);

	if (idx >= IWL_FW_RUNTIME_DUMP_WK_NUM ||
	    FUNC8(fwrt->dump.wks[idx].idx, &fwrt->dump.active_wks))
		return -EBUSY;

	fwrt->dump.wks[idx].ini_trig_id = id;

	FUNC0(fwrt, "WRT: Collecting data: ini trigger %d fired.\n", id);

	FUNC7(&fwrt->dump.wks[idx].wk, FUNC9(delay));

	return 0;
}