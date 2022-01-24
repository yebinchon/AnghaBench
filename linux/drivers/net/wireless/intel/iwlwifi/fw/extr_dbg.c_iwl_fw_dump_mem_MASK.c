#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct iwl_fw_runtime {int /*<<< orphan*/  trans; } ;
struct iwl_fw_error_dump_mem {void* type; int /*<<< orphan*/  data; void* offset; } ;
struct iwl_fw_error_dump_data {scalar_t__ data; void* len; void* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*,void*) ; 
 int /*<<< orphan*/  IWL_FW_ERROR_DUMP_MEM ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct iwl_fw_error_dump_data* FUNC2 (struct iwl_fw_error_dump_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iwl_fw_runtime *fwrt,
			    struct iwl_fw_error_dump_data **dump_data,
			    u32 len, u32 ofs, u32 type)
{
	struct iwl_fw_error_dump_mem *dump_mem;

	if (!len)
		return;

	(*dump_data)->type = FUNC1(IWL_FW_ERROR_DUMP_MEM);
	(*dump_data)->len = FUNC1(len + sizeof(*dump_mem));
	dump_mem = (void *)(*dump_data)->data;
	dump_mem->type = FUNC1(type);
	dump_mem->offset = FUNC1(ofs);
	FUNC3(fwrt->trans, ofs, dump_mem->data, len);
	*dump_data = FUNC2(*dump_data);

	FUNC0(fwrt, "WRT memory dump. Type=%u\n", dump_mem->type);
}