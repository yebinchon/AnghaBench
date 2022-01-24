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
typedef  int u32 ;
struct iwl_fw_runtime {int /*<<< orphan*/  trans; } ;
struct iwl_fw_ini_region_cfg {int dummy; } ;
struct TYPE_2__ {void* version; } ;
struct iwl_fw_ini_monitor_dump {void* ranges; void* cycle_cnt; void* write_ptr; TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*) ; 
 int IWL_INI_DUMP_VER ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static void
*FUNC5(struct iwl_fw_runtime *fwrt,
			      struct iwl_fw_ini_region_cfg *reg,
			      struct iwl_fw_ini_monitor_dump *data,
			      u32 write_ptr_addr, u32 write_ptr_msk,
			      u32 cycle_cnt_addr, u32 cycle_cnt_msk)
{
	u32 write_ptr, cycle_cnt;
	unsigned long flags;

	if (!FUNC3(fwrt->trans, &flags)) {
		FUNC0(fwrt, "Failed to get monitor header\n");
		return NULL;
	}

	write_ptr = FUNC2(fwrt->trans, write_ptr_addr);
	cycle_cnt = FUNC2(fwrt->trans, cycle_cnt_addr);

	FUNC4(fwrt->trans, &flags);

	data->header.version = FUNC1(IWL_INI_DUMP_VER);
	data->write_ptr = FUNC1(write_ptr & write_ptr_msk);
	data->cycle_cnt = FUNC1(cycle_cnt & cycle_cnt_msk);

	return data->ranges;
}