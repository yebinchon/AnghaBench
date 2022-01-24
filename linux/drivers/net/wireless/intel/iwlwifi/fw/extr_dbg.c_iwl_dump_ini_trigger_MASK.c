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
typedef  size_t u32 ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct iwl_fw_ini_region_cfg** active_regs; } ;
struct iwl_fw_runtime {TYPE_1__ dump; } ;
struct iwl_fw_ini_trigger {int /*<<< orphan*/ * data; int /*<<< orphan*/  num_regions; } ;
struct iwl_fw_ini_region_cfg {int /*<<< orphan*/  region_type; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 size_t FUNC0 (struct iwl_fw_ini_region_cfg**) ; 
 scalar_t__ IWL_FW_INI_DBG_DOMAIN_ALWAYS_ON ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_fw_runtime*,char*,size_t) ; 
 scalar_t__ FUNC2 (int) ; 
 size_t FUNC3 (struct iwl_fw_runtime*,struct iwl_fw_ini_trigger*,struct list_head*) ; 
 size_t FUNC4 (struct iwl_fw_runtime*,struct list_head*,struct iwl_fw_ini_region_cfg*,struct iwl_fw_ini_region_cfg**) ; 
 struct iwl_fw_ini_region_cfg** iwl_dump_ini_region_ops ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(struct iwl_fw_runtime *fwrt,
				struct iwl_fw_ini_trigger *trigger,
				struct list_head *list)
{
	int i;
	u32 size = 0;

	for (i = 0; i < FUNC5(trigger->num_regions); i++) {
		u32 reg_id = FUNC5(trigger->data[i]), reg_type;
		struct iwl_fw_ini_region_cfg *reg;

		if (FUNC2(reg_id >= FUNC0(fwrt->dump.active_regs)))
			continue;

		reg = fwrt->dump.active_regs[reg_id];
		if (!reg) {
			FUNC1(fwrt,
				 "WRT: Unassigned region id %d, skipping\n",
				 reg_id);
			continue;
		}

		/* currently the driver supports always on domain only */
		if (FUNC5(reg->domain) != IWL_FW_INI_DBG_DOMAIN_ALWAYS_ON)
			continue;

		reg_type = FUNC5(reg->region_type);
		if (reg_type >= FUNC0(iwl_dump_ini_region_ops))
			continue;

		size += FUNC4(fwrt, list, reg,
					 &iwl_dump_ini_region_ops[reg_type]);
	}

	if (size)
		size += FUNC3(fwrt, trigger, list);

	return size;
}