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
typedef  int u32 ;
struct msix_entry {int dummy; } ;
struct isr_statistics {int /*<<< orphan*/  hw; int /*<<< orphan*/  ctkill; int /*<<< orphan*/  sw; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  alive; int /*<<< orphan*/  tx; } ;
struct iwl_trans_pcie {int fh_mask; int shared_vec_mask; int ucode_write_complete; int hw_mask; int sx_complete; int /*<<< orphan*/  sx_waitq; TYPE_2__* prph_info; int /*<<< orphan*/  rxq; int /*<<< orphan*/  ucode_write_waitq; int /*<<< orphan*/  irq_lock; struct isr_statistics isr_stats; struct iwl_trans* trans; } ;
struct TYPE_6__ {int hw_error; } ;
struct iwl_trans {int /*<<< orphan*/  sync_cmd_lockdep_map; TYPE_3__ dbg; TYPE_1__* trans_cfg; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {int /*<<< orphan*/  sleep_notif; } ;
struct TYPE_4__ {scalar_t__ device_family; scalar_t__ gen2; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_IML_RESP_ADDR ; 
 int /*<<< orphan*/  CSR_MSIX_FH_INT_CAUSES_AD ; 
 int /*<<< orphan*/  CSR_MSIX_FH_INT_MASK_AD ; 
 int /*<<< orphan*/  CSR_MSIX_HW_INT_CAUSES_AD ; 
 int /*<<< orphan*/  CSR_MSIX_HW_INT_MASK_AD ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IWL_D3_SLEEP_STATUS_RESUME ; 
 int IWL_D3_SLEEP_STATUS_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,...) ; 
 scalar_t__ IWL_DEVICE_FAMILY_22560 ; 
 int /*<<< orphan*/  IWL_DL_ISR ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,...) ; 
 int IWL_IMAGE_RESP_FAIL ; 
 int IWL_SHARED_IRQ_FIRST_RSS ; 
 int IWL_SHARED_IRQ_NON_RX ; 
 int MSIX_FH_INT_CAUSES_D2S_CH0_NUM ; 
 int MSIX_FH_INT_CAUSES_FH_ERR ; 
 int MSIX_FH_INT_CAUSES_Q0 ; 
 int MSIX_FH_INT_CAUSES_Q1 ; 
 int MSIX_HW_INT_CAUSES_REG_ALIVE ; 
 int MSIX_HW_INT_CAUSES_REG_CT_KILL ; 
 int MSIX_HW_INT_CAUSES_REG_HW_ERR ; 
 int MSIX_HW_INT_CAUSES_REG_IML ; 
 int MSIX_HW_INT_CAUSES_REG_IPC ; 
 int MSIX_HW_INT_CAUSES_REG_RF_KILL ; 
 int MSIX_HW_INT_CAUSES_REG_SW_ERR ; 
 int MSIX_HW_INT_CAUSES_REG_SW_ERR_V2 ; 
 int MSIX_HW_INT_CAUSES_REG_WAKEUP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,struct msix_entry*) ; 
 struct iwl_trans_pcie* FUNC4 (struct msix_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*) ; 
 int FUNC11 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct msix_entry*,int,int,int) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC23(int irq, void *dev_id)
{
	struct msix_entry *entry = dev_id;
	struct iwl_trans_pcie *trans_pcie = FUNC4(entry);
	struct iwl_trans *trans = trans_pcie->trans;
	struct isr_statistics *isr_stats = &trans_pcie->isr_stats;
	u32 inta_fh, inta_hw;

	FUNC16(&trans->sync_cmd_lockdep_map);

	FUNC18(&trans_pcie->irq_lock);
	inta_fh = FUNC11(trans, CSR_MSIX_FH_INT_CAUSES_AD);
	inta_hw = FUNC11(trans, CSR_MSIX_HW_INT_CAUSES_AD);
	/*
	 * Clear causes registers to avoid being handling the same cause.
	 */
	FUNC12(trans, CSR_MSIX_FH_INT_CAUSES_AD, inta_fh);
	FUNC12(trans, CSR_MSIX_HW_INT_CAUSES_AD, inta_hw);
	FUNC19(&trans_pcie->irq_lock);

	FUNC20(trans->dev, entry, true, inta_fh, inta_hw);

	if (FUNC21(!(inta_fh | inta_hw))) {
		FUNC0(trans, "Ignore interrupt, inta == 0\n");
		FUNC17(&trans->sync_cmd_lockdep_map);
		return IRQ_NONE;
	}

	if (FUNC2(IWL_DL_ISR)) {
		FUNC0(trans,
			      "ISR inta_fh 0x%08x, enabled (sw) 0x%08x (hw) 0x%08x\n",
			      inta_fh, trans_pcie->fh_mask,
			      FUNC11(trans, CSR_MSIX_FH_INT_MASK_AD));
		if (inta_fh & ~trans_pcie->fh_mask)
			FUNC0(trans,
				      "We got a masked interrupt (0x%08x)\n",
				      inta_fh & ~trans_pcie->fh_mask);
	}

	inta_fh &= trans_pcie->fh_mask;

	if ((trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_NON_RX) &&
	    inta_fh & MSIX_FH_INT_CAUSES_Q0) {
		FUNC14();
		FUNC7(trans, 0);
		FUNC15();
	}

	if ((trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_FIRST_RSS) &&
	    inta_fh & MSIX_FH_INT_CAUSES_Q1) {
		FUNC14();
		FUNC7(trans, 1);
		FUNC15();
	}

	/* This "Tx" DMA channel is used only for loading uCode */
	if (inta_fh & MSIX_FH_INT_CAUSES_D2S_CH0_NUM) {
		FUNC0(trans, "uCode load interrupt\n");
		isr_stats->tx++;
		/*
		 * Wake up uCode load routine,
		 * now that load is complete
		 */
		trans_pcie->ucode_write_complete = true;
		FUNC22(&trans_pcie->ucode_write_waitq);
	}

	/* Error detected by uCode */
	if ((inta_fh & MSIX_FH_INT_CAUSES_FH_ERR) ||
	    (inta_hw & MSIX_HW_INT_CAUSES_REG_SW_ERR) ||
	    (inta_hw & MSIX_HW_INT_CAUSES_REG_SW_ERR_V2)) {
		FUNC1(trans,
			"Microcode SW error detected. Restarting 0x%X.\n",
			inta_fh);
		isr_stats->sw++;
		FUNC6(trans);
	}

	/* After checking FH register check HW register */
	if (FUNC2(IWL_DL_ISR)) {
		FUNC0(trans,
			      "ISR inta_hw 0x%08x, enabled (sw) 0x%08x (hw) 0x%08x\n",
			      inta_hw, trans_pcie->hw_mask,
			      FUNC11(trans, CSR_MSIX_HW_INT_MASK_AD));
		if (inta_hw & ~trans_pcie->hw_mask)
			FUNC0(trans,
				      "We got a masked interrupt 0x%08x\n",
				      inta_hw & ~trans_pcie->hw_mask);
	}

	inta_hw &= trans_pcie->hw_mask;

	/* Alive notification via Rx interrupt will do the real work */
	if (inta_hw & MSIX_HW_INT_CAUSES_REG_ALIVE) {
		FUNC0(trans, "Alive interrupt\n");
		isr_stats->alive++;
		if (trans->trans_cfg->gen2) {
			/* We can restock, since firmware configured the RFH */
			FUNC8(trans, trans_pcie->rxq);
		}
	}

	if (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_22560 &&
	    inta_hw & MSIX_HW_INT_CAUSES_REG_IPC) {
		/* Reflect IML transfer status */
		int res = FUNC11(trans, CSR_IML_RESP_ADDR);

		FUNC0(trans, "IML transfer status: %d\n", res);
		if (res == IWL_IMAGE_RESP_FAIL) {
			isr_stats->sw++;
			FUNC6(trans);
		}
	} else if (inta_hw & MSIX_HW_INT_CAUSES_REG_WAKEUP) {
		u32 sleep_notif =
			FUNC13(trans_pcie->prph_info->sleep_notif);
		if (sleep_notif == IWL_D3_SLEEP_STATUS_SUSPEND ||
		    sleep_notif == IWL_D3_SLEEP_STATUS_RESUME) {
			FUNC0(trans,
				      "Sx interrupt: sleep notification = 0x%x\n",
				      sleep_notif);
			trans_pcie->sx_complete = true;
			FUNC22(&trans_pcie->sx_waitq);
		} else {
			/* uCode wakes up after power-down sleep */
			FUNC0(trans, "Wakeup interrupt\n");
			FUNC9(trans);
			FUNC10(trans);

			isr_stats->wakeup++;
		}
	}

	if (inta_hw & MSIX_HW_INT_CAUSES_REG_IML) {
		/* Reflect IML transfer status */
		int res = FUNC11(trans, CSR_IML_RESP_ADDR);

		FUNC0(trans, "IML transfer status: %d\n", res);
		if (res == IWL_IMAGE_RESP_FAIL) {
			isr_stats->sw++;
			FUNC6(trans);
		}
	}

	/* Chip got too hot and stopped itself */
	if (inta_hw & MSIX_HW_INT_CAUSES_REG_CT_KILL) {
		FUNC1(trans, "Microcode CT kill error detected.\n");
		isr_stats->ctkill++;
	}

	/* HW RF KILL switch toggled */
	if (inta_hw & MSIX_HW_INT_CAUSES_REG_RF_KILL)
		FUNC5(trans);

	if (inta_hw & MSIX_HW_INT_CAUSES_REG_HW_ERR) {
		FUNC1(trans,
			"Hardware error detected. Restarting.\n");

		isr_stats->hw++;
		trans->dbg.hw_error = true;
		FUNC6(trans);
	}

	FUNC3(trans, entry);

	FUNC17(&trans->sync_cmd_lockdep_map);

	return IRQ_HANDLED;
}