#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ cb; } ;
struct iwl_txq {int high_mark; scalar_t__ write_ptr; scalar_t__ read_ptr; int /*<<< orphan*/  lock; scalar_t__ wd_timeout; int /*<<< orphan*/  stuck_timer; TYPE_2__* entries; int /*<<< orphan*/  overflow_q; } ;
struct iwl_tx_cmd_gen3 {int /*<<< orphan*/  len; } ;
struct iwl_tx_cmd_gen2 {int /*<<< orphan*/  len; } ;
struct iwl_trans_pcie {int dev_cmd_offs; int /*<<< orphan*/  queue_used; struct iwl_txq** txq; } ;
struct iwl_trans {TYPE_3__* trans_cfg; } ;
struct TYPE_5__ {int /*<<< orphan*/  sequence; } ;
struct iwl_device_cmd {scalar_t__ payload; TYPE_1__ hdr; } ;
struct iwl_cmd_meta {scalar_t__ flags; } ;
struct TYPE_8__ {scalar_t__ nr_frags; } ;
struct TYPE_7__ {scalar_t__ device_family; } ;
struct TYPE_6__ {struct iwl_cmd_meta meta; struct iwl_device_cmd* cmd; struct sk_buff* skb; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int) ; 
 scalar_t__ IWL_DEVICE_FAMILY_22560 ; 
 scalar_t__ FUNC1 (struct iwl_trans_pcie*) ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,char*,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct iwl_trans*,struct iwl_txq*,struct iwl_device_cmd*,struct sk_buff*,struct iwl_cmd_meta*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*,struct iwl_txq*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans_pcie*,struct iwl_txq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct iwl_txq*,scalar_t__) ; 
 scalar_t__ FUNC13 (struct iwl_trans*,scalar_t__) ; 
 int FUNC14 (struct iwl_trans*,struct iwl_txq*) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_trans*,struct iwl_txq*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 
 TYPE_4__* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int) ; 

int FUNC24(struct iwl_trans *trans, struct sk_buff *skb,
			   struct iwl_device_cmd *dev_cmd, int txq_id)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	struct iwl_cmd_meta *out_meta;
	struct iwl_txq *txq = trans_pcie->txq[txq_id];
	u16 cmd_len;
	int idx;
	void *tfd;

	if (FUNC4(!FUNC22(txq_id, trans_pcie->queue_used),
		      "TX on unused queue %d\n", txq_id))
		return -EINVAL;

	if (FUNC18(skb) &&
	    FUNC19(skb)->nr_frags > FUNC1(trans_pcie) &&
	    FUNC5(skb))
		return -ENOMEM;

	FUNC20(&txq->lock);

	if (FUNC14(trans, txq) < txq->high_mark) {
		FUNC15(trans, txq);

		/* don't put the packet on the ring, if there is no room */
		if (FUNC23(FUNC14(trans, txq) < 3)) {
			struct iwl_device_cmd **dev_cmd_ptr;

			dev_cmd_ptr = (void *)((u8 *)skb->cb +
					       trans_pcie->dev_cmd_offs);

			*dev_cmd_ptr = dev_cmd;
			FUNC6(&txq->overflow_q, skb);
			FUNC21(&txq->lock);
			return 0;
		}
	}

	idx = FUNC12(txq, txq->write_ptr);

	/* Set up driver data for this TFD */
	txq->entries[idx].skb = skb;
	txq->entries[idx].cmd = dev_cmd;

	dev_cmd->hdr.sequence =
		FUNC7((u16)(FUNC3(txq_id) |
			    FUNC0(idx)));

	/* Set up first empty entry in queue's array of Tx/cmd buffers */
	out_meta = &txq->entries[idx].meta;
	out_meta->flags = 0;

	tfd = FUNC8(trans, txq, dev_cmd, skb, out_meta);
	if (!tfd) {
		FUNC21(&txq->lock);
		return -1;
	}

	if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22560) {
		struct iwl_tx_cmd_gen3 *tx_cmd_gen3 =
			(void *)dev_cmd->payload;

		cmd_len = FUNC16(tx_cmd_gen3->len);
	} else {
		struct iwl_tx_cmd_gen2 *tx_cmd_gen2 =
			(void *)dev_cmd->payload;

		cmd_len = FUNC16(tx_cmd_gen2->len);
	}

	/* Set up entry for this TFD in Tx byte-count array */
	FUNC11(trans_pcie, txq, cmd_len,
				      FUNC9(trans, tfd));

	/* start timer if queue currently empty */
	if (txq->read_ptr == txq->write_ptr && txq->wd_timeout)
		FUNC17(&txq->stuck_timer, jiffies + txq->wd_timeout);

	/* Tell device the write index *just past* this latest filled TFD */
	txq->write_ptr = FUNC13(trans, txq->write_ptr);
	FUNC10(trans, txq);
	/*
	 * At this point the frame is "transmitted" successfully
	 * and we will get a TX status notification eventually.
	 */
	FUNC21(&txq->lock);
	return 0;
}