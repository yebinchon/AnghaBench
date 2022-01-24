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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct page {int dummy; } ;
struct iwl_txq {int /*<<< orphan*/  lock; TYPE_2__* entries; int /*<<< orphan*/  write_ptr; int /*<<< orphan*/  read_ptr; } ;
struct iwl_trans_pcie {size_t cmd_queue; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  rx_page_order; struct iwl_txq** txq; } ;
struct iwl_trans {int /*<<< orphan*/  status; int /*<<< orphan*/  op_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  sequence; } ;
struct iwl_rx_packet {TYPE_1__ hdr; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  group_id; } ;
struct iwl_device_cmd {TYPE_3__ hdr; } ;
struct iwl_cmd_meta {int flags; TYPE_4__* source; } ;
struct TYPE_8__ {unsigned long _rx_page_addr; int /*<<< orphan*/  _rx_page_order; struct iwl_rx_packet* resp_pkt; } ;
struct TYPE_6__ {struct iwl_cmd_meta meta; struct iwl_device_cmd* cmd; } ;

/* Variables and functions */
 int CMD_ASYNC ; 
 int CMD_WANT_ASYNC_CALLBACK ; 
 int CMD_WANT_SKB ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SYNC_HCMD_ACTIVE ; 
 scalar_t__ FUNC5 (int,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct iwl_device_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*,int,int) ; 
 int FUNC11 (struct iwl_txq*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans*,struct iwl_cmd_meta*,struct iwl_txq*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_trans*,struct iwl_rx_packet*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 struct iwl_rx_packet* FUNC16 (struct iwl_rx_cmd_buffer*) ; 
 struct page* FUNC17 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

void FUNC22(struct iwl_trans *trans,
			    struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC16(rxb);
	u16 sequence = FUNC14(pkt->hdr.sequence);
	u8 group_id;
	u32 cmd_id;
	int txq_id = FUNC4(sequence);
	int index = FUNC3(sequence);
	int cmd_index;
	struct iwl_device_cmd *cmd;
	struct iwl_cmd_meta *meta;
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	struct iwl_txq *txq = trans_pcie->txq[trans_pcie->cmd_queue];

	/* If a Tx command is being handled and it isn't in the actual
	 * command queue then there a command routing bug has been introduced
	 * in the queue management code. */
	if (FUNC5(txq_id != trans_pcie->cmd_queue,
		 "wrong command queue %d (should be %d), sequence 0x%X readp=%d writep=%d\n",
		 txq_id, trans_pcie->cmd_queue, sequence, txq->read_ptr,
		 txq->write_ptr)) {
		FUNC13(trans, pkt, 32);
		return;
	}

	FUNC18(&txq->lock);

	cmd_index = FUNC11(txq, index);
	cmd = txq->entries[cmd_index].cmd;
	meta = &txq->entries[cmd_index].meta;
	group_id = cmd->hdr.group_id;
	cmd_id = FUNC7(cmd->hdr.cmd, group_id, 0);

	FUNC12(trans, meta, txq, index);

	/* Input error checking is done when commands are added to queue. */
	if (meta->flags & CMD_WANT_SKB) {
		struct page *p = FUNC17(rxb);

		meta->source->resp_pkt = pkt;
		meta->source->_rx_page_addr = (unsigned long)FUNC15(p);
		meta->source->_rx_page_order = trans_pcie->rx_page_order;
	}

	if (meta->flags & CMD_WANT_ASYNC_CALLBACK)
		FUNC9(trans->op_mode, cmd);

	FUNC10(trans, txq_id, index);

	if (!(meta->flags & CMD_ASYNC)) {
		if (!FUNC20(STATUS_SYNC_HCMD_ACTIVE, &trans->status)) {
			FUNC2(trans,
				 "HCMD_ACTIVE already clear for command %s\n",
				 FUNC8(trans, cmd_id));
		}
		FUNC6(STATUS_SYNC_HCMD_ACTIVE, &trans->status);
		FUNC0(trans, "Clearing HCMD_ACTIVE for command %s\n",
			       FUNC8(trans, cmd_id));
		FUNC21(&trans_pcie->wait_command_queue);
	}

	meta->flags = 0;

	FUNC19(&txq->lock);
}