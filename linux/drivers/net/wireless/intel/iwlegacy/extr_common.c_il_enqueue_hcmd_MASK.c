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
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct il_queue {int /*<<< orphan*/  n_bd; int /*<<< orphan*/  write_ptr; } ;
struct il_tx_queue {int need_update; struct il_cmd_meta* meta; struct il_device_cmd** cmd; struct il_queue q; } ;
struct il_priv {size_t cmd_queue; int /*<<< orphan*/  hcmd_lock; TYPE_2__* ops; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  restart; int /*<<< orphan*/  workqueue; struct il_tx_queue* txq; } ;
struct il_host_cmd {int len; int id; long flags; int /*<<< orphan*/  data; int /*<<< orphan*/  callback; } ;
struct TYPE_6__ {int cmd; int /*<<< orphan*/  sequence; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  payload; } ;
struct il_device_cmd {TYPE_3__ hdr; TYPE_1__ cmd; } ;
struct il_cmd_meta {int flags; int /*<<< orphan*/  callback; struct il_host_cmd* source; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_5__ {int (* get_hcmd_size ) (int,int) ;int /*<<< orphan*/  (* txq_attach_buf_to_tfd ) (struct il_priv*,struct il_tx_queue*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* txq_update_byte_cnt_tbl ) (struct il_priv*,struct il_tx_queue*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CMD_ASYNC ; 
 int CMD_MAPPED ; 
 long CMD_SIZE_HUGE ; 
 int CMD_WANT_SKB ; 
#define  C_SENSITIVITY 129 
#define  C_TX_LINK_QUALITY_CMD 128 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,size_t,size_t) ; 
 int EIO ; 
 size_t ENOMEM ; 
 int ENOSPC ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ IL_MAX_CMD_SIZE ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int FUNC6 (size_t) ; 
 int /*<<< orphan*/  SEQ_HUGE_FRAME ; 
 size_t TFD_CMD_SLOTS ; 
 scalar_t__ TFD_MAX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct il_cmd_meta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct il_cmd_meta*,int,scalar_t__) ; 
 size_t FUNC12 (struct il_queue*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (struct il_priv*) ; 
 scalar_t__ FUNC15 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct il_queue*) ; 
 int /*<<< orphan*/  FUNC18 (struct il_priv*,struct il_tx_queue*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct il_cmd_meta*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC27 (int,int) ; 
 int /*<<< orphan*/  FUNC28 (struct il_priv*,struct il_tx_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct il_priv*,struct il_tx_queue*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 

int
FUNC31(struct il_priv *il, struct il_host_cmd *cmd)
{
	struct il_tx_queue *txq = &il->txq[il->cmd_queue];
	struct il_queue *q = &txq->q;
	struct il_device_cmd *out_cmd;
	struct il_cmd_meta *out_meta;
	dma_addr_t phys_addr;
	unsigned long flags;
	int len;
	u32 idx;
	u16 fix_size;

	cmd->len = il->ops->get_hcmd_size(cmd->id, cmd->len);
	fix_size = (u16) (cmd->len + sizeof(out_cmd->hdr));

	/* If any of the command structures end up being larger than
	 * the TFD_MAX_PAYLOAD_SIZE, and it sent as a 'small' command then
	 * we will need to increase the size of the TFD entries
	 * Also, check to see if command buffer should not exceed the size
	 * of device_cmd and max_cmd_size. */
	FUNC0((fix_size > TFD_MAX_PAYLOAD_SIZE) &&
	       !(cmd->flags & CMD_SIZE_HUGE));
	FUNC0(fix_size > IL_MAX_CMD_SIZE);

	if (FUNC15(il) || FUNC14(il)) {
		FUNC5("Not sending command - %s KILL\n",
			FUNC15(il) ? "RF" : "CT");
		return -EIO;
	}

	FUNC25(&il->hcmd_lock, flags);

	if (FUNC17(q) < ((cmd->flags & CMD_ASYNC) ? 2 : 1)) {
		FUNC26(&il->hcmd_lock, flags);

		FUNC4("Restarting adapter due to command queue full\n");
		FUNC24(il->workqueue, &il->restart);
		return -ENOSPC;
	}

	idx = FUNC12(q, q->write_ptr, cmd->flags & CMD_SIZE_HUGE);
	out_cmd = txq->cmd[idx];
	out_meta = &txq->meta[idx];

	if (FUNC8(out_meta->flags & CMD_MAPPED)) {
		FUNC26(&il->hcmd_lock, flags);
		return -ENOSPC;
	}

	FUNC21(out_meta, 0, sizeof(*out_meta));	/* re-initialize to NULL */
	out_meta->flags = cmd->flags | CMD_MAPPED;
	if (cmd->flags & CMD_WANT_SKB)
		out_meta->source = cmd;
	if (cmd->flags & CMD_ASYNC)
		out_meta->callback = cmd->callback;

	out_cmd->hdr.cmd = cmd->id;
	FUNC20(&out_cmd->cmd.payload, cmd->data, cmd->len);

	/* At this point, the out_cmd now has all of the incoming cmd
	 * information */

	out_cmd->hdr.flags = 0;
	out_cmd->hdr.sequence =
	    FUNC9(FUNC6(il->cmd_queue) | FUNC3(q->write_ptr));
	if (cmd->flags & CMD_SIZE_HUGE)
		out_cmd->hdr.sequence |= SEQ_HUGE_FRAME;
	len = sizeof(struct il_device_cmd);
	if (idx == TFD_CMD_SLOTS)
		len = IL_MAX_CMD_SIZE;

#ifdef CONFIG_IWLEGACY_DEBUG
	switch (out_cmd->hdr.cmd) {
	case C_TX_LINK_QUALITY_CMD:
	case C_SENSITIVITY:
		D_HC_DUMP("Sending command %s (#%x), seq: 0x%04X, "
			  "%d bytes at %d[%d]:%d\n",
			  il_get_cmd_string(out_cmd->hdr.cmd), out_cmd->hdr.cmd,
			  le16_to_cpu(out_cmd->hdr.sequence), fix_size,
			  q->write_ptr, idx, il->cmd_queue);
		break;
	default:
		D_HC("Sending command %s (#%x), seq: 0x%04X, "
		     "%d bytes at %d[%d]:%d\n",
		     il_get_cmd_string(out_cmd->hdr.cmd), out_cmd->hdr.cmd,
		     le16_to_cpu(out_cmd->hdr.sequence), fix_size, q->write_ptr,
		     idx, il->cmd_queue);
	}
#endif

	phys_addr =
	    FUNC23(il->pci_dev, &out_cmd->hdr, fix_size,
			   PCI_DMA_BIDIRECTIONAL);
	if (FUNC30(FUNC22(il->pci_dev, phys_addr))) {
		idx = -ENOMEM;
		goto out;
	}
	FUNC10(out_meta, mapping, phys_addr);
	FUNC11(out_meta, len, fix_size);

	txq->need_update = 1;

	if (il->ops->txq_update_byte_cnt_tbl)
		/* Set up entry in queue's byte count circular buffer */
		il->ops->txq_update_byte_cnt_tbl(il, txq, 0);

	il->ops->txq_attach_buf_to_tfd(il, txq, phys_addr, fix_size, 1,
					    FUNC7(cmd->len));

	/* Increment and update queue's write idx */
	q->write_ptr = FUNC16(q->write_ptr, q->n_bd);
	FUNC18(il, txq);

out:
	FUNC26(&il->hcmd_lock, flags);
	return idx;
}