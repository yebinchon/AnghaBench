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
typedef  int u32 ;
struct iwl_fw_runtime {TYPE_3__* trans; } ;
struct iwl_fw_ini_region_cfg {int dummy; } ;
struct iwl_fw_ini_error_dump_range {int /*<<< orphan*/  range_data_size; int /*<<< orphan*/  data; int /*<<< orphan*/  dram_base_addr; } ;
struct TYPE_5__ {TYPE_1__* fw_mon; } ;
struct TYPE_6__ {TYPE_2__ dbg; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  block; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MON_BUFF_BASE_ADDR_VER2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct iwl_fw_runtime *fwrt,
			   struct iwl_fw_ini_region_cfg *reg, void *range_ptr,
			   int idx)
{
	struct iwl_fw_ini_error_dump_range *range = range_ptr;
	u32 start_addr = FUNC2(fwrt->trans,
					    MON_BUFF_BASE_ADDR_VER2);

	if (start_addr == 0x5a5a5a5a)
		return -EBUSY;

	range->dram_base_addr = FUNC1(start_addr);
	range->range_data_size = FUNC0(fwrt->trans->dbg.fw_mon[idx].size);

	FUNC4(range->data, fwrt->trans->dbg.fw_mon[idx].block,
	       fwrt->trans->dbg.fw_mon[idx].size);

	return sizeof(*range) + FUNC3(range->range_data_size);
}