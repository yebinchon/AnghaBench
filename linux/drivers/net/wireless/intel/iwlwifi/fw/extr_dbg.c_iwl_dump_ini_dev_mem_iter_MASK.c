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
struct TYPE_2__ {int /*<<< orphan*/  range_data_size; } ;
struct iwl_fw_ini_region_cfg {TYPE_1__ internal; int /*<<< orphan*/  offset; int /*<<< orphan*/ * start_addr; } ;
struct iwl_fw_ini_error_dump_range {int /*<<< orphan*/  range_data_size; int /*<<< orphan*/  data; int /*<<< orphan*/  internal_base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iwl_fw_runtime *fwrt,
				     struct iwl_fw_ini_region_cfg *reg,
				     void *range_ptr, int idx)
{
	struct iwl_fw_ini_error_dump_range *range = range_ptr;
	u32 addr = FUNC2(reg->start_addr[idx]) + FUNC2(reg->offset);

	range->internal_base_addr = FUNC0(addr);
	range->range_data_size = reg->internal.range_data_size;
	FUNC1(fwrt->trans, addr, range->data,
				 FUNC2(reg->internal.range_data_size));

	return sizeof(*range) + FUNC2(range->range_data_size);
}