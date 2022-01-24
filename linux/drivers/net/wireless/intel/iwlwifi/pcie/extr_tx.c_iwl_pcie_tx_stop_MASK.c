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
struct iwl_trans_pcie {int /*<<< orphan*/  txq_memory; int /*<<< orphan*/  queue_used; int /*<<< orphan*/  queue_stopped; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_4__ {int num_of_queues; } ;
struct TYPE_3__ {TYPE_2__* base_params; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	int txq_id;

	/* Turn off all Tx DMA fifos */
	FUNC3(trans);

	/* Turn off all Tx DMA channels */
	FUNC1(trans);

	/*
	 * This function can be called before the op_mode disabled the
	 * queues. This happens when we have an rfkill interrupt.
	 * Since we stop Tx altogether - mark the queues as stopped.
	 */
	FUNC4(trans_pcie->queue_stopped, 0, sizeof(trans_pcie->queue_stopped));
	FUNC4(trans_pcie->queue_used, 0, sizeof(trans_pcie->queue_used));

	/* This can happen: start_hw, stop_device */
	if (!trans_pcie->txq_memory)
		return 0;

	/* Unmap DMA from host system and free skb's */
	for (txq_id = 0; txq_id < trans->trans_cfg->base_params->num_of_queues;
	     txq_id++)
		FUNC2(trans, txq_id);

	return 0;
}