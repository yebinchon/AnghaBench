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
typedef  int u32 ;
struct isr_statistics {int /*<<< orphan*/  unhandled; int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  sw; int /*<<< orphan*/  ctkill; int /*<<< orphan*/  alive; int /*<<< orphan*/  sch; int /*<<< orphan*/  hw; } ;
struct iwl_trans_pcie {int inta_mask; int ucode_write_complete; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  ucode_write_waitq; int /*<<< orphan*/  rxq; int /*<<< orphan*/  use_ict; struct isr_statistics isr_stats; } ;
struct iwl_trans {int /*<<< orphan*/  sync_cmd_lockdep_map; int /*<<< orphan*/  status; TYPE_1__* trans_cfg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ gen2; } ;

/* Variables and functions */
 int CSR_FH_INT_RX_MASK ; 
 int /*<<< orphan*/  CSR_FH_INT_STATUS ; 
 int CSR_FH_INT_TX_MASK ; 
 int /*<<< orphan*/  CSR_INT ; 
 int CSR_INT_BIT_ALIVE ; 
 int CSR_INT_BIT_CT_KILL ; 
 int CSR_INT_BIT_FH_RX ; 
 int CSR_INT_BIT_FH_TX ; 
 int CSR_INT_BIT_HW_ERR ; 
 int CSR_INT_BIT_RF_KILL ; 
 int CSR_INT_BIT_RX_PERIODIC ; 
 int CSR_INT_BIT_SCD ; 
 int CSR_INT_BIT_SW_ERR ; 
 int CSR_INT_BIT_SW_RX ; 
 int CSR_INT_BIT_WAKEUP ; 
 int /*<<< orphan*/  CSR_INT_MASK ; 
 int /*<<< orphan*/  CSR_INT_PERIODIC_DIS ; 
 int /*<<< orphan*/  CSR_INT_PERIODIC_ENA ; 
 int /*<<< orphan*/  CSR_INT_PERIODIC_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,...) ; 
 int /*<<< orphan*/  IWL_DL_ISR ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,...) ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,char*,int) ; 
 int /*<<< orphan*/  STATUS_INT_ENABLED ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*) ; 
 int FUNC11 (struct iwl_trans*) ; 
 int FUNC12 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC17 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC18 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC31(int irq, void *dev_id)
{
	struct iwl_trans *trans = dev_id;
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	struct isr_statistics *isr_stats = &trans_pcie->isr_stats;
	u32 inta = 0;
	u32 handled = 0;

	FUNC24(&trans->sync_cmd_lockdep_map);

	FUNC26(&trans_pcie->irq_lock);

	/* dram interrupt table not set yet,
	 * use legacy interrupt.
	 */
	if (FUNC21(trans_pcie->use_ict))
		inta = FUNC11(trans);
	else
		inta = FUNC12(trans);

	if (FUNC9(IWL_DL_ISR)) {
		FUNC0(trans,
			      "ISR inta 0x%08x, enabled 0x%08x(sw), enabled(hw) 0x%08x, fh 0x%08x\n",
			      inta, trans_pcie->inta_mask,
			      FUNC18(trans, CSR_INT_MASK),
			      FUNC18(trans, CSR_FH_INT_STATUS));
		if (inta & (~trans_pcie->inta_mask))
			FUNC0(trans,
				      "We got a masked interrupt (0x%08x)\n",
				      inta & (~trans_pcie->inta_mask));
	}

	inta &= trans_pcie->inta_mask;

	/*
	 * Ignore interrupt if there's nothing in NIC to service.
	 * This may be due to IRQ shared with another device,
	 * or due to sporadic interrupts thrown from our NIC.
	 */
	if (FUNC29(!inta)) {
		FUNC0(trans, "Ignore interrupt, inta == 0\n");
		/*
		 * Re-enable interrupts here since we don't
		 * have anything to service
		 */
		if (FUNC28(STATUS_INT_ENABLED, &trans->status))
			FUNC4(trans);
		FUNC27(&trans_pcie->irq_lock);
		FUNC25(&trans->sync_cmd_lockdep_map);
		return IRQ_NONE;
	}

	if (FUNC29(inta == 0xFFFFFFFF || (inta & 0xFFFFFFF0) == 0xa5a5a5a0)) {
		/*
		 * Hardware disappeared. It might have
		 * already raised an interrupt.
		 */
		FUNC3(trans, "HARDWARE GONE?? INTA == 0x%08x\n", inta);
		FUNC27(&trans_pcie->irq_lock);
		goto out;
	}

	/* Ack/clear/reset pending uCode interrupts.
	 * Note:  Some bits in CSR_INT are "OR" of bits in CSR_FH_INT_STATUS,
	 */
	/* There is a hardware bug in the interrupt mask function that some
	 * interrupts (i.e. CSR_INT_BIT_SCD) can still be generated even if
	 * they are disabled in the CSR_INT_MASK register. Furthermore the
	 * ICT interrupt handling mechanism has another bug that might cause
	 * these unmasked interrupts fail to be detected. We workaround the
	 * hardware bugs here by ACKing all the possible interrupts so that
	 * interrupt coalescing can still be achieved.
	 */
	FUNC19(trans, CSR_INT, inta | ~trans_pcie->inta_mask);

	if (FUNC9(IWL_DL_ISR))
		FUNC0(trans, "inta 0x%08x, enabled 0x%08x\n",
			      inta, FUNC18(trans, CSR_INT_MASK));

	FUNC27(&trans_pcie->irq_lock);

	/* Now service all interrupt bits discovered above. */
	if (inta & CSR_INT_BIT_HW_ERR) {
		FUNC1(trans, "Hardware error detected.  Restarting.\n");

		/* Tell the device to stop sending interrupts */
		FUNC5(trans);

		isr_stats->hw++;
		FUNC13(trans);

		handled |= CSR_INT_BIT_HW_ERR;

		goto out;
	}

	/* NIC fires this, but we don't use it, redundant with WAKEUP */
	if (inta & CSR_INT_BIT_SCD) {
		FUNC0(trans,
			      "Scheduler finished to transmit the frame/frames.\n");
		isr_stats->sch++;
	}

	/* Alive notification via Rx interrupt will do the real work */
	if (inta & CSR_INT_BIT_ALIVE) {
		FUNC0(trans, "Alive interrupt\n");
		isr_stats->alive++;
		if (trans->trans_cfg->gen2) {
			/*
			 * We can restock, since firmware configured
			 * the RFH
			 */
			FUNC15(trans, trans_pcie->rxq);
		}

		handled |= CSR_INT_BIT_ALIVE;
	}

	/* Safely ignore these bits for debug checks below */
	inta &= ~(CSR_INT_BIT_SCD | CSR_INT_BIT_ALIVE);

	/* HW RF KILL switch toggled */
	if (inta & CSR_INT_BIT_RF_KILL) {
		FUNC10(trans);
		handled |= CSR_INT_BIT_RF_KILL;
	}

	/* Chip got too hot and stopped itself */
	if (inta & CSR_INT_BIT_CT_KILL) {
		FUNC1(trans, "Microcode CT kill error detected.\n");
		isr_stats->ctkill++;
		handled |= CSR_INT_BIT_CT_KILL;
	}

	/* Error detected by uCode */
	if (inta & CSR_INT_BIT_SW_ERR) {
		FUNC1(trans, "Microcode SW error detected. "
			" Restarting 0x%X.\n", inta);
		isr_stats->sw++;
		FUNC13(trans);
		handled |= CSR_INT_BIT_SW_ERR;
	}

	/* uCode wakes up after power-down sleep */
	if (inta & CSR_INT_BIT_WAKEUP) {
		FUNC0(trans, "Wakeup interrupt\n");
		FUNC16(trans);
		FUNC17(trans);

		isr_stats->wakeup++;

		handled |= CSR_INT_BIT_WAKEUP;
	}

	/* All uCode command responses, including Tx command responses,
	 * Rx "responses" (frame-received notification), and other
	 * notifications from uCode come through here*/
	if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX |
		    CSR_INT_BIT_RX_PERIODIC)) {
		FUNC0(trans, "Rx interrupt\n");
		if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX)) {
			handled |= (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX);
			FUNC19(trans, CSR_FH_INT_STATUS,
					CSR_FH_INT_RX_MASK);
		}
		if (inta & CSR_INT_BIT_RX_PERIODIC) {
			handled |= CSR_INT_BIT_RX_PERIODIC;
			FUNC19(trans,
				CSR_INT, CSR_INT_BIT_RX_PERIODIC);
		}
		/* Sending RX interrupt require many steps to be done in the
		 * the device:
		 * 1- write interrupt to current index in ICT table.
		 * 2- dma RX frame.
		 * 3- update RX shared data to indicate last write index.
		 * 4- send interrupt.
		 * This could lead to RX race, driver could receive RX interrupt
		 * but the shared data changes does not reflect this;
		 * periodic interrupt will detect any dangling Rx activity.
		 */

		/* Disable periodic interrupt; we use it as just a one-shot. */
		FUNC20(trans, CSR_INT_PERIODIC_REG,
			    CSR_INT_PERIODIC_DIS);

		/*
		 * Enable periodic interrupt in 8 msec only if we received
		 * real RX interrupt (instead of just periodic int), to catch
		 * any dangling Rx interrupt.  If it was just the periodic
		 * interrupt, there was no dangling Rx activity, and no need
		 * to extend the periodic interrupt; one-shot is enough.
		 */
		if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX))
			FUNC20(trans, CSR_INT_PERIODIC_REG,
				   CSR_INT_PERIODIC_ENA);

		isr_stats->rx++;

		FUNC22();
		FUNC14(trans, 0);
		FUNC23();
	}

	/* This "Tx" DMA channel is used only for loading uCode */
	if (inta & CSR_INT_BIT_FH_TX) {
		FUNC19(trans, CSR_FH_INT_STATUS, CSR_FH_INT_TX_MASK);
		FUNC0(trans, "uCode load interrupt\n");
		isr_stats->tx++;
		handled |= CSR_INT_BIT_FH_TX;
		/* Wake up uCode load routine, now that load is complete */
		trans_pcie->ucode_write_complete = true;
		FUNC30(&trans_pcie->ucode_write_waitq);
	}

	if (inta & ~handled) {
		FUNC1(trans, "Unhandled INTA bits 0x%08x\n", inta & ~handled);
		isr_stats->unhandled++;
	}

	if (inta & ~(trans_pcie->inta_mask)) {
		FUNC3(trans, "Disabled INTA bits 0x%08x were pending\n",
			 inta & ~trans_pcie->inta_mask);
	}

	FUNC26(&trans_pcie->irq_lock);
	/* only Re-enable all interrupt if disabled by irq */
	if (FUNC28(STATUS_INT_ENABLED, &trans->status))
		FUNC4(trans);
	/* we are loading the firmware, enable FH_TX interrupt only */
	else if (handled & CSR_INT_BIT_FH_TX)
		FUNC6(trans);
	/* Re-enable RF_KILL if it occurred */
	else if (handled & CSR_INT_BIT_RF_KILL)
		FUNC8(trans);
	/* Re-enable the ALIVE / Rx interrupt if it occurred */
	else if (handled & (CSR_INT_BIT_ALIVE | CSR_INT_BIT_FH_RX))
		FUNC7(trans);
	FUNC27(&trans_pcie->irq_lock);

out:
	FUNC25(&trans->sync_cmd_lockdep_map);
	return IRQ_HANDLED;
}