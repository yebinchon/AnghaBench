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
struct iwl_txq {int id; int read_ptr; int write_ptr; } ;
struct iwl_tx_queue_cfg_rsp {int /*<<< orphan*/  write_pointer; int /*<<< orphan*/  queue_number; } ;
struct iwl_trans_pcie {struct iwl_txq** txq; int /*<<< orphan*/  queue_used; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct iwl_host_cmd {TYPE_3__* resp_pkt; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int max_tfd_queue_size; } ;

/* Variables and functions */
 int FUNC0 (struct iwl_txq**) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int) ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,struct iwl_txq*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 

int FUNC10(struct iwl_trans *trans,
				      struct iwl_txq *txq,
				      struct iwl_host_cmd *hcmd)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	struct iwl_tx_queue_cfg_rsp *rsp;
	int ret, qid;
	u32 wr_ptr;

	if (FUNC3(FUNC7(hcmd->resp_pkt) !=
		    sizeof(*rsp))) {
		ret = -EINVAL;
		goto error_free_resp;
	}

	rsp = (void *)hcmd->resp_pkt->data;
	qid = FUNC8(rsp->queue_number);
	wr_ptr = FUNC8(rsp->write_pointer);

	if (qid >= FUNC0(trans_pcie->txq)) {
		FUNC4(1, "queue index %d unsupported", qid);
		ret = -EIO;
		goto error_free_resp;
	}

	if (FUNC9(qid, trans_pcie->queue_used)) {
		FUNC4(1, "queue %d already used", qid);
		ret = -EIO;
		goto error_free_resp;
	}

	txq->id = qid;
	trans_pcie->txq[qid] = txq;
	wr_ptr &= (trans->trans_cfg->base_params->max_tfd_queue_size - 1);

	/* Place first TFD at index corresponding to start sequence number */
	txq->read_ptr = wr_ptr;
	txq->write_ptr = wr_ptr;

	FUNC1(trans, "Activate queue %d\n", qid);

	FUNC5(hcmd);
	return qid;

error_free_resp:
	FUNC5(hcmd);
	FUNC6(trans, txq);
	return ret;
}