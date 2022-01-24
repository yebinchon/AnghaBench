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
struct iwl_fw_runtime {int /*<<< orphan*/  trans; } ;

/* Variables and functions */
 int IWL_FW_RUNTIME_DUMP_WK_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_fw_runtime*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_fw_runtime*,int /*<<< orphan*/ *,int) ; 

void FUNC3(struct iwl_fw_runtime *fwrt)
{
	int i;

	FUNC0(fwrt->trans);
	for (i = 0; i < IWL_FW_RUNTIME_DUMP_WK_NUM; i++)
		FUNC1(fwrt, i);

	FUNC2(fwrt, NULL, true);
}