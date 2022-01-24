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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int monitor_only; TYPE_2__* wks; struct iwl_fw_dump_desc const* desc; int /*<<< orphan*/  active_wks; } ;
struct iwl_fw_runtime {TYPE_3__ dump; int /*<<< orphan*/  trans; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct iwl_fw_dump_desc {TYPE_1__ trig_desc; } ;
struct TYPE_5__ {int /*<<< orphan*/  wk; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iwl_fw_dump_desc const*) ; 
 int FUNC2 (struct iwl_fw_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_fw_runtime*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 

int FUNC9(struct iwl_fw_runtime *fwrt,
			    const struct iwl_fw_dump_desc *desc,
			    bool monitor_only,
			    unsigned int delay)
{
	u32 trig_type = FUNC5(desc->trig_desc.type);
	int ret;

	if (FUNC4(fwrt->trans)) {
		ret = FUNC2(fwrt, trig_type);
		if (!ret)
			FUNC3(fwrt);

		return ret;
	}

	/* use wks[0] since dump flow prior to ini does not need to support
	 * consecutive triggers collection
	 */
	if (FUNC7(fwrt->dump.wks[0].idx, &fwrt->dump.active_wks))
		return -EBUSY;

	if (FUNC1(fwrt->dump.desc))
		FUNC3(fwrt);

	FUNC0(fwrt, "Collecting data: trigger %d fired.\n",
		 FUNC5(desc->trig_desc.type));

	fwrt->dump.desc = desc;
	fwrt->dump.monitor_only = monitor_only;

	FUNC6(&fwrt->dump.wks[0].wk, FUNC8(delay));

	return 0;
}