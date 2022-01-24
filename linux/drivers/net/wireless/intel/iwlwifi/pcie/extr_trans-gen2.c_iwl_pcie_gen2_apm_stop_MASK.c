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
struct iwl_trans {TYPE_2__* trans_cfg; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__* csr; } ;
struct TYPE_3__ {int /*<<< orphan*/  flag_init_done; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_DBG_LINK_PWR_MGMT_REG ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
 int CSR_HW_IF_CONFIG_REG_ENABLE_PME ; 
 int CSR_HW_IF_CONFIG_REG_PREPARE ; 
 int CSR_RESET_LINK_PWR_MGMT_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  STATUS_DEVICE_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct iwl_trans *trans, bool op_mode_leave)
{
	FUNC1(trans, "Stop card, put in low power state\n");

	if (op_mode_leave) {
		if (!FUNC9(STATUS_DEVICE_ENABLED, &trans->status))
			FUNC5(trans);

		/* inform ME that we are leaving */
		FUNC6(trans, CSR_DBG_LINK_PWR_MGMT_REG,
			    CSR_RESET_LINK_PWR_MGMT_DISABLED);
		FUNC6(trans, CSR_HW_IF_CONFIG_REG,
			    CSR_HW_IF_CONFIG_REG_PREPARE |
			    CSR_HW_IF_CONFIG_REG_ENABLE_PME);
		FUNC8(1);
		FUNC3(trans, CSR_DBG_LINK_PWR_MGMT_REG,
			      CSR_RESET_LINK_PWR_MGMT_DISABLED);
		FUNC8(5);
	}

	FUNC2(STATUS_DEVICE_ENABLED, &trans->status);

	/* Stop device's DMA activity */
	FUNC4(trans);

	FUNC7(trans);

	/*
	 * Clear "initialization complete" bit to move adapter from
	 * D0A* (powered-up Active) --> D0U* (Uninitialized) state.
	 */
	FUNC3(trans, CSR_GP_CNTRL,
		      FUNC0(trans->trans_cfg->csr->flag_init_done));
}