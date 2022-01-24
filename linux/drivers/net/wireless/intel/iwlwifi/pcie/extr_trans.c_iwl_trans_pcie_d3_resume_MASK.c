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
typedef  int u32 ;
struct iwl_trans_pcie {int sx_complete; int /*<<< orphan*/  sx_waitq; int /*<<< orphan*/  msix_enabled; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
typedef  enum iwl_d3_status { ____Placeholder_iwl_d3_status } iwl_d3_status ;
struct TYPE_4__ {scalar_t__ device_family; TYPE_1__* csr; } ;
struct TYPE_3__ {int /*<<< orphan*/  flag_mac_access_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  CSR_RESET ; 
 int CSR_RESET_REG_FLAG_NEVO_RESET ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int IWL_D3_STATUS_ALIVE ; 
 int IWL_D3_STATUS_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_DEVICE_FAMILY_AX210 ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  UREG_DOORBELL_TO_ISR6 ; 
 int /*<<< orphan*/  UREG_DOORBELL_TO_ISR6_RESUME ; 
 int /*<<< orphan*/  WFPM_GP2 ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int FUNC6 (struct iwl_trans*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans_pcie*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*) ; 
 int FUNC9 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*,int) ; 
 int FUNC11 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC17(struct iwl_trans *trans,
				    enum iwl_d3_status *status,
				    bool test,  bool reset)
{
	struct iwl_trans_pcie *trans_pcie =  FUNC3(trans);
	u32 val;
	int ret;

	if (test) {
		FUNC5(trans);
		*status = IWL_D3_STATUS_ALIVE;
		goto out;
	}

	FUNC13(trans, CSR_GP_CNTRL,
		    FUNC0(trans->trans_cfg->csr->flag_mac_access_req));

	ret = FUNC6(trans, trans->trans_cfg);
	if (ret)
		return ret;

	/*
	 * Reconfigure IVAR table in case of MSIX or reset ict table in
	 * MSI mode since HW reset erased it.
	 * Also enables interrupts - none will happen as
	 * the device doesn't know we're waking it up, only when
	 * the opmode actually tells it after this call.
	 */
	FUNC7(trans_pcie);
	if (!trans_pcie->msix_enabled)
		FUNC8(trans);
	FUNC5(trans);

	FUNC10(trans, false);

	if (!reset) {
		FUNC4(trans, CSR_GP_CNTRL,
			      FUNC0(trans->trans_cfg->csr->flag_mac_access_req));
	} else {
		FUNC14(trans);

		ret = FUNC9(trans);
		if (ret) {
			FUNC2(trans,
				"Failed to resume the device (RX reset)\n");
			return ret;
		}
	}

	FUNC1(trans, "WFPM value upon resume = 0x%08X\n",
			FUNC12(trans, WFPM_GP2));

	val = FUNC11(trans, CSR_RESET);
	if (val & CSR_RESET_REG_FLAG_NEVO_RESET)
		*status = IWL_D3_STATUS_RESET;
	else
		*status = IWL_D3_STATUS_ALIVE;

out:
	if (*status == IWL_D3_STATUS_ALIVE &&
	    trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_AX210) {
		trans_pcie->sx_complete = false;
		FUNC15(trans, UREG_DOORBELL_TO_ISR6,
				    UREG_DOORBELL_TO_ISR6_RESUME);

		ret = FUNC16(trans_pcie->sx_waitq,
					 trans_pcie->sx_complete, 2 * HZ);
		/*
		 * Invalidate it toward next suspend.
		 */
		trans_pcie->sx_complete = false;

		if (!ret) {
			FUNC2(trans, "Timeout exiting D3\n");
			return -ETIMEDOUT;
		}
	}
	return 0;
}