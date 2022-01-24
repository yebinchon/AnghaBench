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
typedef  int u32 ;
struct iwl_trans {int dummy; } ;
struct iwl_fw_error_dump_data {scalar_t__ data; void* len; void* type; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int IWL_CSR_TO_DUMP ; 
 int IWL_FW_ERROR_DUMP_CSR ; 
 void* FUNC0 (int) ; 
 struct iwl_fw_error_dump_data* FUNC1 (struct iwl_fw_error_dump_data*) ; 
 int FUNC2 (struct iwl_trans*,int) ; 

__attribute__((used)) static u32 FUNC3(struct iwl_trans *trans,
				   struct iwl_fw_error_dump_data **data)
{
	u32 csr_len = sizeof(**data) + IWL_CSR_TO_DUMP;
	__le32 *val;
	int i;

	(*data)->type = FUNC0(IWL_FW_ERROR_DUMP_CSR);
	(*data)->len = FUNC0(IWL_CSR_TO_DUMP);
	val = (void *)(*data)->data;

	for (i = 0; i < IWL_CSR_TO_DUMP; i += 4)
		*val++ = FUNC0(FUNC2(trans, i));

	*data = FUNC1(*data);

	return csr_len;
}