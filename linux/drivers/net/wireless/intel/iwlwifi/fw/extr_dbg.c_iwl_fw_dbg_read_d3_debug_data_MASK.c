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
struct TYPE_3__ {int /*<<< orphan*/  d3_debug_data; } ;
struct iwl_fw_runtime {TYPE_1__ dump; TYPE_2__* trans; } ;
struct iwl_cfg {int /*<<< orphan*/  d3_debug_data_length; int /*<<< orphan*/  d3_debug_data_base_addr; } ;
struct TYPE_4__ {struct iwl_cfg* cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_fw_runtime*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct iwl_fw_runtime *fwrt)
{
	const struct iwl_cfg *cfg = fwrt->trans->cfg;

	if (!FUNC1(fwrt))
		return;

	if (!fwrt->dump.d3_debug_data) {
		fwrt->dump.d3_debug_data = FUNC3(cfg->d3_debug_data_length,
						   GFP_KERNEL);
		if (!fwrt->dump.d3_debug_data) {
			FUNC0(fwrt,
				"failed to allocate memory for D3 debug data\n");
			return;
		}
	}

	/* if the buffer holds previous debug data it is overwritten */
	FUNC2(fwrt->trans, cfg->d3_debug_data_base_addr,
				 fwrt->dump.d3_debug_data,
				 cfg->d3_debug_data_length);
}