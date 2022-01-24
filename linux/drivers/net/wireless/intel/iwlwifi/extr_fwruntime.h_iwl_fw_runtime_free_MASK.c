#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* wks; struct iwl_fw_ini_active_triggers* active_trigs; int /*<<< orphan*/ * d3_debug_data; } ;
struct iwl_fw_runtime {TYPE_2__ dump; int /*<<< orphan*/  trans; } ;
struct iwl_fw_ini_active_triggers {int active; int /*<<< orphan*/ * trig; scalar_t__ size; } ;
struct TYPE_3__ {int /*<<< orphan*/  wk; } ;

/* Variables and functions */
 int IWL_FW_RUNTIME_DUMP_WK_NUM ; 
 int IWL_FW_TRIGGER_ID_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct iwl_fw_runtime *fwrt)
{
	int i;

	FUNC2(fwrt->dump.d3_debug_data);
	fwrt->dump.d3_debug_data = NULL;

	for (i = 0; i < IWL_FW_TRIGGER_ID_NUM; i++) {
		struct iwl_fw_ini_active_triggers *active =
			&fwrt->dump.active_trigs[i];

		active->active = false;
		active->size = 0;
		FUNC2(active->trig);
		active->trig = NULL;
	}

	FUNC1(fwrt->trans);
	for (i = 0; i < IWL_FW_RUNTIME_DUMP_WK_NUM; i++)
		FUNC0(&fwrt->dump.wks[i].wk);
}