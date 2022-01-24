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
struct iwl_txq {int n_window; int /*<<< orphan*/  stuck_timer; TYPE_3__* entries; scalar_t__ first_tb_dma; int /*<<< orphan*/ * first_tb_bufs; int /*<<< orphan*/ * tfds; scalar_t__ dma_addr; } ;
struct iwl_trans_pcie {int cmd_queue; int tfd_size; struct iwl_txq** txq; } ;
struct iwl_trans {TYPE_2__* trans_cfg; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  free_buf; int /*<<< orphan*/  cmd; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int max_tfd_queue_size; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_txq*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct iwl_trans *trans, int txq_id)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	struct iwl_txq *txq = trans_pcie->txq[txq_id];
	struct device *dev = trans->dev;
	int i;

	if (FUNC1(!txq))
		return;

	FUNC4(trans, txq_id);

	/* De-alloc array of command/tx buffers */
	if (txq_id == trans_pcie->cmd_queue)
		for (i = 0; i < txq->n_window; i++) {
			FUNC6(txq->entries[i].cmd);
			FUNC6(txq->entries[i].free_buf);
		}

	/* De-alloc circular buffer of TFDs */
	if (txq->tfds) {
		FUNC3(dev,
				  trans_pcie->tfd_size *
				  trans->trans_cfg->base_params->max_tfd_queue_size,
				  txq->tfds, txq->dma_addr);
		txq->dma_addr = 0;
		txq->tfds = NULL;

		FUNC3(dev,
				  sizeof(*txq->first_tb_bufs) * txq->n_window,
				  txq->first_tb_bufs, txq->first_tb_dma);
	}

	FUNC5(txq->entries);
	txq->entries = NULL;

	FUNC2(&txq->stuck_timer);

	/* 0-fill queue descriptor structure */
	FUNC7(txq, 0, sizeof(*txq));
}