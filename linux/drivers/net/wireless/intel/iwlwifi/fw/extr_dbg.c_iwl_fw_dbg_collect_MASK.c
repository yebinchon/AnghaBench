#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct iwl_fw_runtime {int /*<<< orphan*/  trans; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  type; } ;
struct iwl_fw_dump_desc {size_t len; TYPE_1__ trig_desc; } ;
struct iwl_fw_dbg_trigger_tlv {int flags; int mode; int /*<<< orphan*/  stop_delay; int /*<<< orphan*/  occurrences; } ;
typedef  enum iwl_fw_dbg_trigger { ____Placeholder_iwl_fw_dbg_trigger } iwl_fw_dbg_trigger ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IWL_FW_DBG_FORCE_RESTART ; 
 int IWL_FW_DBG_TRIGGER_MONITOR_ONLY ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*,int) ; 
 unsigned int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_fw_runtime*,struct iwl_fw_dump_desc*,int,unsigned int) ; 
 struct iwl_fw_dump_desc* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,size_t) ; 

int FUNC9(struct iwl_fw_runtime *fwrt,
		       enum iwl_fw_dbg_trigger trig,
		       const char *str, size_t len,
		       struct iwl_fw_dbg_trigger_tlv *trigger)
{
	struct iwl_fw_dump_desc *desc;
	unsigned int delay = 0;
	bool monitor_only = false;

	if (trigger) {
		u16 occurrences = FUNC6(trigger->occurrences) - 1;

		if (!FUNC6(trigger->occurrences))
			return 0;

		if (trigger->flags & IWL_FW_DBG_FORCE_RESTART) {
			FUNC0(fwrt, "Force restart: trigger %d fired.\n",
				 trig);
			FUNC3(fwrt->trans);
			return 0;
		}

		trigger->occurrences = FUNC1(occurrences);
		monitor_only = trigger->mode & IWL_FW_DBG_TRIGGER_MONITOR_ONLY;

		/* convert msec to usec */
		delay = FUNC7(trigger->stop_delay) * USEC_PER_MSEC;
	}

	desc = FUNC5(sizeof(*desc) + len, GFP_ATOMIC);
	if (!desc)
		return -ENOMEM;


	desc->len = len;
	desc->trig_desc.type = FUNC2(trig);
	FUNC8(desc->trig_desc.data, str, len);

	return FUNC4(fwrt, desc, monitor_only, delay);
}