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
struct iwl_trans_pcie {int sx_complete; int /*<<< orphan*/  sx_waitq; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG_PERSIST_MODE ; 
 int ETIMEDOUT ; 
 int HZ ; 
 scalar_t__ IWL_DEVICE_FAMILY_AX210 ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  UREG_DOORBELL_TO_ISR6 ; 
 int /*<<< orphan*/  UREG_DOORBELL_TO_ISR6_SUSPEND ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct iwl_trans *trans, bool test,
				     bool reset)
{
	int ret;
	struct iwl_trans_pcie *trans_pcie =  FUNC1(trans);

	/*
	 * Family IWL_DEVICE_FAMILY_AX210 and above persist mode is set by FW.
	 */
	if (!reset && trans->trans_cfg->device_family < IWL_DEVICE_FAMILY_AX210) {
		/* Enable persistence mode to avoid reset */
		FUNC3(trans, CSR_HW_IF_CONFIG_REG,
			    CSR_HW_IF_CONFIG_REG_PERSIST_MODE);
	}

	if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_AX210) {
		FUNC4(trans, UREG_DOORBELL_TO_ISR6,
				    UREG_DOORBELL_TO_ISR6_SUSPEND);

		ret = FUNC5(trans_pcie->sx_waitq,
					 trans_pcie->sx_complete, 2 * HZ);
		/*
		 * Invalidate it toward resume.
		 */
		trans_pcie->sx_complete = false;

		if (!ret) {
			FUNC0(trans, "Timeout entering D3\n");
			return -ETIMEDOUT;
		}
	}
	FUNC2(trans, test, reset);

	return 0;
}