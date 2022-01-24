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
struct iwl_trans_pcie {int is_down; int /*<<< orphan*/  mutex; } ;
struct iwl_trans {int /*<<< orphan*/  status; TYPE_3__* trans_cfg; TYPE_1__* cfg; } ;
struct TYPE_6__ {TYPE_2__* csr; } ;
struct TYPE_5__ {int /*<<< orphan*/  flag_mac_access_req; } ;
struct TYPE_4__ {int /*<<< orphan*/  apmg_not_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_CLK_DIS_REG ; 
 int /*<<< orphan*/  APMG_CLK_VAL_DMA_CLK_RQT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_DEVICE_ENABLED ; 
 int /*<<< orphan*/  STATUS_INT_ENABLED ; 
 int /*<<< orphan*/  STATUS_SYNC_HCMD_ACTIVE ; 
 int /*<<< orphan*/  STATUS_TPOWER_PMI ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans_pcie*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);

	FUNC15(&trans_pcie->mutex);

	if (trans_pcie->is_down)
		return;

	trans_pcie->is_down = true;

	/* tell the device to stop sending interrupts */
	FUNC5(trans);

	/* device going down, Stop using ICT table */
	FUNC9(trans);

	/*
	 * If a HW restart happens during firmware loading,
	 * then the firmware loading might call this function
	 * and later it might be called again due to the
	 * restart. So don't process again if the device is
	 * already dead.
	 */
	if (FUNC16(STATUS_DEVICE_ENABLED, &trans->status)) {
		FUNC1(trans,
			       "DEVICE_ENABLED bit was set and is now cleared\n");
		FUNC12(trans);
		FUNC11(trans);

		/* Power-down device's busmaster DMA clocks */
		if (!trans->cfg->apmg_not_supported) {
			FUNC14(trans, APMG_CLK_DIS_REG,
				       APMG_CLK_VAL_DMA_CLK_RQT);
			FUNC17(5);
		}
	}

	/* Make sure (redundant) we've released our request to stay awake */
	FUNC4(trans, CSR_GP_CNTRL,
		      FUNC0(trans->trans_cfg->csr->flag_mac_access_req));

	/* Stop the device, and put it in low power state */
	FUNC7(trans, false);

	FUNC13(trans);

	/*
	 * Upon stop, the IVAR table gets erased, so msi-x won't
	 * work. This causes a bug in RF-KILL flows, since the interrupt
	 * that enables radio won't fire on the correct irq, and the
	 * driver won't be able to handle the interrupt.
	 * Configure the IVAR table again after reset.
	 */
	FUNC8(trans_pcie);

	/*
	 * Upon stop, the APM issues an interrupt if HW RF kill is set.
	 * This is a bug in certain verions of the hardware.
	 * Certain devices also keep sending HW RF kill interrupt all
	 * the time, unless the interrupt is ACKed even if the interrupt
	 * should be masked. Re-ACK all the interrupts here.
	 */
	FUNC5(trans);

	/* clear all status bits */
	FUNC3(STATUS_SYNC_HCMD_ACTIVE, &trans->status);
	FUNC3(STATUS_INT_ENABLED, &trans->status);
	FUNC3(STATUS_TPOWER_PMI, &trans->status);

	/*
	 * Even if we stop the HW, we still want the RF kill
	 * interrupt
	 */
	FUNC6(trans);

	/* re-take ownership to prevent other users from stealing the device */
	FUNC10(trans);
}