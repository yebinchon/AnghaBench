#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct iwl_txq {int n_window; TYPE_3__* entries; int /*<<< orphan*/  dma_addr; void* tfds; void* first_tb_bufs; int /*<<< orphan*/  first_tb_dma; struct iwl_trans_pcie* trans_pcie; int /*<<< orphan*/  stuck_timer; } ;
struct iwl_trans_pcie {size_t tfd_size; } ;
struct iwl_trans {int /*<<< orphan*/  dev; TYPE_2__* trans_cfg; } ;
struct iwl_pcie_txq_entry {int dummy; } ;
struct iwl_device_cmd {int dummy; } ;
struct TYPE_8__ {struct TYPE_8__* cmd; } ;
struct TYPE_7__ {scalar_t__ use_tfh; TYPE_1__* base_params; } ;
struct TYPE_6__ {size_t max_tfd_queue_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IWL_FIRST_TB_SIZE_ALIGN ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iwl_pcie_txq_stuck_timer ; 
 TYPE_3__* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct iwl_trans *trans, struct iwl_txq *txq,
		       int slots_num, bool cmd_queue)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	size_t tfd_sz = trans_pcie->tfd_size *
		trans->trans_cfg->base_params->max_tfd_queue_size;
	size_t tb0_buf_sz;
	int i;

	if (FUNC2(txq->entries || txq->tfds))
		return -EINVAL;

	if (trans->trans_cfg->use_tfh)
		tfd_sz = trans_pcie->tfd_size * slots_num;

	FUNC8(&txq->stuck_timer, iwl_pcie_txq_stuck_timer, 0);
	txq->trans_pcie = trans_pcie;

	txq->n_window = slots_num;

	txq->entries = FUNC5(slots_num,
			       sizeof(struct iwl_pcie_txq_entry),
			       GFP_KERNEL);

	if (!txq->entries)
		goto error;

	if (cmd_queue)
		for (i = 0; i < slots_num; i++) {
			txq->entries[i].cmd =
				FUNC7(sizeof(struct iwl_device_cmd),
					GFP_KERNEL);
			if (!txq->entries[i].cmd)
				goto error;
		}

	/* Circular buffer of transmit frame descriptors (TFDs),
	 * shared with device */
	txq->tfds = FUNC3(trans->dev, tfd_sz,
				       &txq->dma_addr, GFP_KERNEL);
	if (!txq->tfds)
		goto error;

	FUNC0(IWL_FIRST_TB_SIZE_ALIGN != sizeof(*txq->first_tb_bufs));

	tb0_buf_sz = sizeof(*txq->first_tb_bufs) * slots_num;

	txq->first_tb_bufs = FUNC3(trans->dev, tb0_buf_sz,
					      &txq->first_tb_dma,
					      GFP_KERNEL);
	if (!txq->first_tb_bufs)
		goto err_free_tfds;

	return 0;
err_free_tfds:
	FUNC4(trans->dev, tfd_sz, txq->tfds, txq->dma_addr);
error:
	if (txq->entries && cmd_queue)
		for (i = 0; i < slots_num; i++)
			FUNC6(txq->entries[i].cmd);
	FUNC6(txq->entries);
	txq->entries = NULL;

	return -ENOMEM;

}