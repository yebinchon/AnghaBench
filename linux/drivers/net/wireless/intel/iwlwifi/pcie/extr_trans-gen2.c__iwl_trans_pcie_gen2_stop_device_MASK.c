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
struct iwl_trans_pcie {int is_down; int /*<<< orphan*/  mutex; } ;
struct iwl_trans {int /*<<< orphan*/  status; TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {scalar_t__ device_family; TYPE_1__* csr; } ;
struct TYPE_3__ {int /*<<< orphan*/  flag_mac_access_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*) ; 
 scalar_t__ IWL_DEVICE_FAMILY_22560 ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_DEVICE_ENABLED ; 
 int /*<<< orphan*/  STATUS_INT_ENABLED ; 
 int /*<<< orphan*/  STATUS_SYNC_HCMD_ACTIVE ; 
 int /*<<< orphan*/  STATUS_TPOWER_PMI ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans_pcie*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC16 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC19(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);

	FUNC17(&trans_pcie->mutex);

	if (trans_pcie->is_down)
		return;

	trans_pcie->is_down = true;

	/* tell the device to stop sending interrupts */
	FUNC5(trans);

	/* device going down, Stop using ICT table */
	FUNC11(trans);

	/*
	 * If a HW restart happens during firmware loading,
	 * then the firmware loading might call this function
	 * and later it might be called again due to the
	 * restart. So don't process again if the device is
	 * already dead.
	 */
	if (FUNC18(STATUS_DEVICE_ENABLED, &trans->status)) {
		FUNC1(trans,
			       "DEVICE_ENABLED bit was set and is now cleared\n");
		FUNC13(trans);
		FUNC15(trans);
	}

	FUNC9(trans);
	if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22560)
		FUNC10(trans);
	else
		FUNC8(trans);

	/* Make sure (redundant) we've released our request to stay awake */
	FUNC4(trans, CSR_GP_CNTRL,
		      FUNC0(trans->trans_cfg->csr->flag_mac_access_req));

	/* Stop the device, and put it in low power state */
	FUNC12(trans, false);

	FUNC16(trans);

	/*
	 * Upon stop, the IVAR table gets erased, so msi-x won't
	 * work. This causes a bug in RF-KILL flows, since the interrupt
	 * that enables radio won't fire on the correct irq, and the
	 * driver won't be able to handle the interrupt.
	 * Configure the IVAR table again after reset.
	 */
	FUNC7(trans_pcie);

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
	FUNC14(trans);
}