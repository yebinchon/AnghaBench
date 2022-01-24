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
struct iwl_trans_pcie {int /*<<< orphan*/  mutex; scalar_t__ is_down; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct fw_img {int dummy; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INT ; 
 int CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_CLR ; 
 int CSR_UCODE_SW_BIT_RFKILL ; 
 int EIO ; 
 int ERFKILL ; 
 scalar_t__ IWL_DEVICE_FAMILY_22560 ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int FUNC5 (struct iwl_trans*) ; 
 int FUNC6 (struct iwl_trans*,struct fw_img const*) ; 
 int FUNC7 (struct iwl_trans*,struct fw_img const*) ; 
 int FUNC8 (struct iwl_trans*) ; 
 scalar_t__ FUNC9 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct iwl_trans *trans,
				 const struct fw_img *fw, bool run_in_rfkill)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	bool hw_rfkill;
	int ret;

	/* This may fail if AMT took ownership of the device */
	if (FUNC9(trans)) {
		FUNC2(trans, "Exit HW not ready\n");
		ret = -EIO;
		goto out;
	}

	FUNC4(trans);

	FUNC11(trans, CSR_INT, 0xFFFFFFFF);

	/*
	 * We enabled the RF-Kill interrupt and the handler may very
	 * well be running. Disable the interrupts to make sure no other
	 * interrupt can be fired.
	 */
	FUNC3(trans);

	/* Make sure it finished running */
	FUNC10(trans);

	FUNC12(&trans_pcie->mutex);

	/* If platform's RF_KILL switch is NOT set to KILL */
	hw_rfkill = FUNC5(trans);
	if (hw_rfkill && !run_in_rfkill) {
		ret = -ERFKILL;
		goto out;
	}

	/* Someone called stop_device, don't try to start_fw */
	if (trans_pcie->is_down) {
		FUNC2(trans,
			 "Can't start_fw since the HW hasn't been started\n");
		ret = -EIO;
		goto out;
	}

	/* make sure rfkill handshake bits are cleared */
	FUNC11(trans, CSR_UCODE_DRV_GP1_CLR, CSR_UCODE_SW_BIT_RFKILL);
	FUNC11(trans, CSR_UCODE_DRV_GP1_CLR,
		    CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED);

	/* clear (again), then enable host interrupts */
	FUNC11(trans, CSR_INT, 0xFFFFFFFF);

	ret = FUNC8(trans);
	if (ret) {
		FUNC0(trans, "Unable to init nic\n");
		goto out;
	}

	if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22560)
		ret = FUNC6(trans, fw);
	else
		ret = FUNC7(trans, fw);
	if (ret)
		goto out;

	/* re-check RF-Kill state since we may have missed the interrupt */
	hw_rfkill = FUNC5(trans);
	if (hw_rfkill && !run_in_rfkill)
		ret = -ERFKILL;

out:
	FUNC13(&trans_pcie->mutex);
	return ret;
}