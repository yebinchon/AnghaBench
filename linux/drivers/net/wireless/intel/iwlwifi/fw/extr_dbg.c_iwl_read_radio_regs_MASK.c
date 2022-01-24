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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct iwl_fw_runtime {int /*<<< orphan*/  trans; } ;
struct iwl_fw_error_dump_data {void* len; void* type; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*) ; 
 int IWL_FW_ERROR_DUMP_RADIO_REG ; 
 int RADIO_REG_MAX_READ ; 
 int RADIO_RSP_ADDR_POS ; 
 int RADIO_RSP_RD_CMD ; 
 int /*<<< orphan*/  RSP_RADIO_CMD ; 
 int /*<<< orphan*/  RSP_RADIO_RDDAT ; 
 void* FUNC1 (int) ; 
 struct iwl_fw_error_dump_data* FUNC2 (struct iwl_fw_error_dump_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct iwl_fw_runtime *fwrt,
				struct iwl_fw_error_dump_data **dump_data)
{
	u8 *pos = (void *)(*dump_data)->data;
	unsigned long flags;
	int i;

	FUNC0(fwrt, "WRT radio registers dump\n");

	if (!FUNC4(fwrt->trans, &flags))
		return;

	(*dump_data)->type = FUNC1(IWL_FW_ERROR_DUMP_RADIO_REG);
	(*dump_data)->len = FUNC1(RADIO_REG_MAX_READ);

	for (i = 0; i < RADIO_REG_MAX_READ; i++) {
		u32 rd_cmd = RADIO_RSP_RD_CMD;

		rd_cmd |= i << RADIO_RSP_ADDR_POS;
		FUNC6(fwrt->trans, RSP_RADIO_CMD, rd_cmd);
		*pos = (u8)FUNC3(fwrt->trans, RSP_RADIO_RDDAT);

		pos++;
	}

	*dump_data = FUNC2(*dump_data);

	FUNC5(fwrt->trans, &flags);
}