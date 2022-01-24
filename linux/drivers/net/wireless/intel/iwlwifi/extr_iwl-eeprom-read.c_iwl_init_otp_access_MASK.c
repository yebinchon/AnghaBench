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
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {scalar_t__ shadow_ram_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_PS_CTRL_REG ; 
 int /*<<< orphan*/  APMG_PS_CTRL_VAL_RESET_REQ ; 
 int /*<<< orphan*/  CSR_DBG_LINK_PWR_MGMT_REG ; 
 int /*<<< orphan*/  CSR_RESET_LINK_PWR_MGMT_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iwl_trans*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct iwl_trans *trans)
{
	int ret;

	ret = FUNC1(trans, trans->trans_cfg);
	if (ret)
		return ret;

	FUNC3(trans, APMG_PS_CTRL_REG,
			  APMG_PS_CTRL_VAL_RESET_REQ);
	FUNC4(5);
	FUNC0(trans, APMG_PS_CTRL_REG,
			    APMG_PS_CTRL_VAL_RESET_REQ);

	/*
	 * CSR auto clock gate disable bit -
	 * this is only applicable for HW with OTP shadow RAM
	 */
	if (trans->trans_cfg->base_params->shadow_ram_support)
		FUNC2(trans, CSR_DBG_LINK_PWR_MGMT_REG,
			    CSR_RESET_LINK_PWR_MGMT_DISABLED);

	return 0;
}