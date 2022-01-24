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
struct status_block {scalar_t__ status_idx; } ;
struct TYPE_2__ {struct status_block* msi; } ;
struct bnx2_napi {scalar_t__ last_status_idx; int /*<<< orphan*/  napi; TYPE_1__ status_blk; struct bnx2* bp; } ;
struct bnx2 {int /*<<< orphan*/  intr_sem; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_PCICFG_INT_ACK_CMD ; 
 int BNX2_PCICFG_INT_ACK_CMD_MASK_INT ; 
 int BNX2_PCICFG_INT_ACK_CMD_USE_INT_HC_PARAM ; 
 int /*<<< orphan*/  BNX2_PCICFG_MISC_STATUS ; 
 int BNX2_PCICFG_MISC_STATUS_INTA_VALUE ; 
 int FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t
FUNC6(int irq, void *dev_instance)
{
	struct bnx2_napi *bnapi = dev_instance;
	struct bnx2 *bp = bnapi->bp;
	struct status_block *sblk = bnapi->status_blk.msi;

	/* When using INTx, it is possible for the interrupt to arrive
	 * at the CPU before the status block posted prior to the
	 * interrupt. Reading a register will flush the status block.
	 * When using MSI, the MSI message will always complete after
	 * the status block write.
	 */
	if ((sblk->status_idx == bnapi->last_status_idx) &&
	    (FUNC0(bp, BNX2_PCICFG_MISC_STATUS) &
	     BNX2_PCICFG_MISC_STATUS_INTA_VALUE))
		return IRQ_NONE;

	FUNC1(bp, BNX2_PCICFG_INT_ACK_CMD,
		BNX2_PCICFG_INT_ACK_CMD_USE_INT_HC_PARAM |
		BNX2_PCICFG_INT_ACK_CMD_MASK_INT);

	/* Read back to deassert IRQ immediately to avoid too many
	 * spurious interrupts.
	 */
	FUNC0(bp, BNX2_PCICFG_INT_ACK_CMD);

	/* Return here if interrupt is shared and is disabled. */
	if (FUNC5(FUNC3(&bp->intr_sem) != 0))
		return IRQ_HANDLED;

	if (FUNC4(&bnapi->napi)) {
		bnapi->last_status_idx = sblk->status_idx;
		FUNC2(&bnapi->napi);
	}

	return IRQ_HANDLED;
}