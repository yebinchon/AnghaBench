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
struct iwl_fw_runtime {TYPE_2__* trans; } ;
struct TYPE_3__ {int hw_error; } ;
struct TYPE_4__ {TYPE_1__ dbg; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_FW_TRIGGER_ID_FW_HW_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iwl_dump_desc_assert ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_fw_runtime*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static inline void FUNC3(struct iwl_fw_runtime *fwrt)
{
	if (FUNC2(fwrt->trans) && fwrt->trans->dbg.hw_error) {
		FUNC0(fwrt, IWL_FW_TRIGGER_ID_FW_HW_ERROR);
		fwrt->trans->dbg.hw_error = false;
	} else {
		FUNC1(fwrt, &iwl_dump_desc_assert, false, 0);
	}
}