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
struct iwl_trans {TYPE_3__* trans_cfg; TYPE_1__* cfg; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {scalar_t__ device_family; TYPE_2__* csr; } ;
struct TYPE_5__ {int /*<<< orphan*/  flag_init_done; } ;
struct TYPE_4__ {scalar_t__ lp_xtal_workaround; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_PCIDEV_STT_REG ; 
 int /*<<< orphan*/  APMG_PCIDEV_STT_VAL_WAKE_ME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_DBG_LINK_PWR_MGMT_REG ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
 int CSR_HW_IF_CONFIG_REG_ENABLE_PME ; 
 int CSR_HW_IF_CONFIG_REG_PREPARE ; 
 int CSR_RESET_LINK_PWR_MGMT_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*) ; 
 scalar_t__ IWL_DEVICE_FAMILY_7000 ; 
 scalar_t__ IWL_DEVICE_FAMILY_8000 ; 
 int /*<<< orphan*/  STATUS_DEVICE_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct iwl_trans *trans, bool op_mode_leave)
{
	FUNC1(trans, "Stop card, put in low power state\n");

	if (op_mode_leave) {
		if (!FUNC11(STATUS_DEVICE_ENABLED, &trans->status))
			FUNC4(trans);

		/* inform ME that we are leaving */
		if (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_7000)
			FUNC8(trans, APMG_PCIDEV_STT_REG,
					  APMG_PCIDEV_STT_VAL_WAKE_ME);
		else if (trans->trans_cfg->device_family >=
			 IWL_DEVICE_FAMILY_8000) {
			FUNC7(trans, CSR_DBG_LINK_PWR_MGMT_REG,
				    CSR_RESET_LINK_PWR_MGMT_DISABLED);
			FUNC7(trans, CSR_HW_IF_CONFIG_REG,
				    CSR_HW_IF_CONFIG_REG_PREPARE |
				    CSR_HW_IF_CONFIG_REG_ENABLE_PME);
			FUNC10(1);
			FUNC3(trans, CSR_DBG_LINK_PWR_MGMT_REG,
				      CSR_RESET_LINK_PWR_MGMT_DISABLED);
		}
		FUNC10(5);
	}

	FUNC2(STATUS_DEVICE_ENABLED, &trans->status);

	/* Stop device's DMA activity */
	FUNC6(trans);

	if (trans->cfg->lp_xtal_workaround) {
		FUNC5(trans);
		return;
	}

	FUNC9(trans);

	/*
	 * Clear "initialization complete" bit to move adapter from
	 * D0A* (powered-up Active) --> D0U* (Uninitialized) state.
	 */
	FUNC3(trans, CSR_GP_CNTRL,
		      FUNC0(trans->trans_cfg->csr->flag_init_done));
}