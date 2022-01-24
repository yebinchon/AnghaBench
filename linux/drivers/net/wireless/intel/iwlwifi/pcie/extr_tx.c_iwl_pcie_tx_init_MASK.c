#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dma; } ;
struct iwl_trans_pcie {int cmd_queue; TYPE_5__** txq; int /*<<< orphan*/  irq_lock; TYPE_1__ kw; int /*<<< orphan*/  txq_memory; } ;
struct iwl_trans {TYPE_4__* trans_cfg; TYPE_2__* cfg; } ;
struct TYPE_10__ {int dma_addr; } ;
struct TYPE_9__ {TYPE_3__* base_params; } ;
struct TYPE_8__ {int num_of_queues; } ;
struct TYPE_7__ {int /*<<< orphan*/  min_256_ba_txq_size; int /*<<< orphan*/  min_txq_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FH_KW_MEM_ADDR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  IWL_CMD_QUEUE_SIZE ; 
 int /*<<< orphan*/  IWL_DEFAULT_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int) ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  SCD_GP_CTRL ; 
 int /*<<< orphan*/  SCD_GP_CTRL_AUTO_ACTIVE_MODE ; 
 int /*<<< orphan*/  SCD_GP_CTRL_ENABLE_31_QUEUES ; 
 int FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int FUNC5 (struct iwl_trans*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  u32 ; 

int FUNC12(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	int ret;
	int txq_id, slots_num;
	bool alloc = false;

	if (!trans_pcie->txq_memory) {
		ret = FUNC3(trans);
		if (ret)
			goto error;
		alloc = true;
	}

	FUNC10(&trans_pcie->irq_lock);

	/* Turn off all Tx DMA fifos */
	FUNC6(trans);

	/* Tell NIC where to find the "keep warm" buffer */
	FUNC8(trans, FH_KW_MEM_ADDR_REG,
			   trans_pcie->kw.dma >> 4);

	FUNC11(&trans_pcie->irq_lock);

	/* Alloc and init all Tx queues, including the command queue (#4/#9) */
	for (txq_id = 0; txq_id < trans->trans_cfg->base_params->num_of_queues;
	     txq_id++) {
		bool cmd_queue = (txq_id == trans_pcie->cmd_queue);

		if (cmd_queue)
			slots_num = FUNC9(u32, IWL_CMD_QUEUE_SIZE,
					  trans->cfg->min_txq_size);
		else
			slots_num = FUNC9(u32, IWL_DEFAULT_QUEUE_SIZE,
					  trans->cfg->min_256_ba_txq_size);
		ret = FUNC5(trans, trans_pcie->txq[txq_id],
					slots_num, cmd_queue);
		if (ret) {
			FUNC1(trans, "Tx %d queue init failed\n", txq_id);
			goto error;
		}

		/*
		 * Tell nic where to find circular buffer of TFDs for a
		 * given Tx queue, and enable the DMA channel used for that
		 * queue.
		 * Circular buffer (TFD queue in DRAM) physical base address
		 */
		FUNC8(trans, FUNC0(trans, txq_id),
				   trans_pcie->txq[txq_id]->dma_addr >> 8);
	}

	FUNC7(trans, SCD_GP_CTRL, SCD_GP_CTRL_AUTO_ACTIVE_MODE);
	if (trans->trans_cfg->base_params->num_of_queues > 20)
		FUNC7(trans, SCD_GP_CTRL,
				  SCD_GP_CTRL_ENABLE_31_QUEUES);

	return 0;
error:
	/*Upon error, free only if we allocated something */
	if (alloc)
		FUNC4(trans);
	return ret;
}