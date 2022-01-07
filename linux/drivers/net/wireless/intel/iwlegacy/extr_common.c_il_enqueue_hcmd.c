
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct il_queue {int n_bd; int write_ptr; } ;
struct il_tx_queue {int need_update; struct il_cmd_meta* meta; struct il_device_cmd** cmd; struct il_queue q; } ;
struct il_priv {size_t cmd_queue; int hcmd_lock; TYPE_2__* ops; int pci_dev; int restart; int workqueue; struct il_tx_queue* txq; } ;
struct il_host_cmd {int len; int id; long flags; int data; int callback; } ;
struct TYPE_6__ {int cmd; int sequence; int flags; } ;
struct TYPE_4__ {int payload; } ;
struct il_device_cmd {TYPE_3__ hdr; TYPE_1__ cmd; } ;
struct il_cmd_meta {int flags; int callback; struct il_host_cmd* source; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {int (* get_hcmd_size ) (int,int) ;int (* txq_attach_buf_to_tfd ) (struct il_priv*,struct il_tx_queue*,int ,scalar_t__,int,int ) ;int (* txq_update_byte_cnt_tbl ) (struct il_priv*,struct il_tx_queue*,int ) ;} ;


 int BUG_ON (int) ;
 int CMD_ASYNC ;
 int CMD_MAPPED ;
 long CMD_SIZE_HUGE ;
 int CMD_WANT_SKB ;


 int D_HC (char*,int ,int,int ,scalar_t__,int ,size_t,size_t) ;
 int D_HC_DUMP (char*,int ,int,int ,scalar_t__,int ,size_t,size_t) ;
 int EIO ;
 size_t ENOMEM ;
 int ENOSPC ;
 int IDX_TO_SEQ (int ) ;
 int IL_ERR (char*) ;
 scalar_t__ IL_MAX_CMD_SIZE ;
 int IL_WARN (char*,char*) ;
 int PCI_DMA_BIDIRECTIONAL ;
 int QUEUE_TO_SEQ (size_t) ;
 int SEQ_HUGE_FRAME ;
 size_t TFD_CMD_SLOTS ;
 scalar_t__ TFD_MAX_PAYLOAD_SIZE ;
 int U32_PAD (int) ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_le16 (int) ;
 int dma_unmap_addr_set (struct il_cmd_meta*,int ,int ) ;
 int dma_unmap_len_set (struct il_cmd_meta*,int,scalar_t__) ;
 size_t il_get_cmd_idx (struct il_queue*,int ,long) ;
 int il_get_cmd_string (int) ;
 scalar_t__ il_is_ctkill (struct il_priv*) ;
 scalar_t__ il_is_rfkill (struct il_priv*) ;
 int il_queue_inc_wrap (int ,int ) ;
 int il_queue_space (struct il_queue*) ;
 int il_txq_update_write_ptr (struct il_priv*,struct il_tx_queue*) ;
 int le16_to_cpu (int ) ;
 int mapping ;
 int memcpy (int *,int ,int) ;
 int memset (struct il_cmd_meta*,int ,int) ;
 int pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,TYPE_3__*,scalar_t__,int ) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int,int) ;
 int stub2 (struct il_priv*,struct il_tx_queue*,int ) ;
 int stub3 (struct il_priv*,struct il_tx_queue*,int ,scalar_t__,int,int ) ;
 scalar_t__ unlikely (int ) ;

int
il_enqueue_hcmd(struct il_priv *il, struct il_host_cmd *cmd)
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






 BUG_ON((fix_size > TFD_MAX_PAYLOAD_SIZE) &&
        !(cmd->flags & CMD_SIZE_HUGE));
 BUG_ON(fix_size > IL_MAX_CMD_SIZE);

 if (il_is_rfkill(il) || il_is_ctkill(il)) {
  IL_WARN("Not sending command - %s KILL\n",
   il_is_rfkill(il) ? "RF" : "CT");
  return -EIO;
 }

 spin_lock_irqsave(&il->hcmd_lock, flags);

 if (il_queue_space(q) < ((cmd->flags & CMD_ASYNC) ? 2 : 1)) {
  spin_unlock_irqrestore(&il->hcmd_lock, flags);

  IL_ERR("Restarting adapter due to command queue full\n");
  queue_work(il->workqueue, &il->restart);
  return -ENOSPC;
 }

 idx = il_get_cmd_idx(q, q->write_ptr, cmd->flags & CMD_SIZE_HUGE);
 out_cmd = txq->cmd[idx];
 out_meta = &txq->meta[idx];

 if (WARN_ON(out_meta->flags & CMD_MAPPED)) {
  spin_unlock_irqrestore(&il->hcmd_lock, flags);
  return -ENOSPC;
 }

 memset(out_meta, 0, sizeof(*out_meta));
 out_meta->flags = cmd->flags | CMD_MAPPED;
 if (cmd->flags & CMD_WANT_SKB)
  out_meta->source = cmd;
 if (cmd->flags & CMD_ASYNC)
  out_meta->callback = cmd->callback;

 out_cmd->hdr.cmd = cmd->id;
 memcpy(&out_cmd->cmd.payload, cmd->data, cmd->len);




 out_cmd->hdr.flags = 0;
 out_cmd->hdr.sequence =
     cpu_to_le16(QUEUE_TO_SEQ(il->cmd_queue) | IDX_TO_SEQ(q->write_ptr));
 if (cmd->flags & CMD_SIZE_HUGE)
  out_cmd->hdr.sequence |= SEQ_HUGE_FRAME;
 len = sizeof(struct il_device_cmd);
 if (idx == TFD_CMD_SLOTS)
  len = IL_MAX_CMD_SIZE;
 phys_addr =
     pci_map_single(il->pci_dev, &out_cmd->hdr, fix_size,
      PCI_DMA_BIDIRECTIONAL);
 if (unlikely(pci_dma_mapping_error(il->pci_dev, phys_addr))) {
  idx = -ENOMEM;
  goto out;
 }
 dma_unmap_addr_set(out_meta, mapping, phys_addr);
 dma_unmap_len_set(out_meta, len, fix_size);

 txq->need_update = 1;

 if (il->ops->txq_update_byte_cnt_tbl)

  il->ops->txq_update_byte_cnt_tbl(il, txq, 0);

 il->ops->txq_attach_buf_to_tfd(il, txq, phys_addr, fix_size, 1,
         U32_PAD(cmd->len));


 q->write_ptr = il_queue_inc_wrap(q->write_ptr, q->n_bd);
 il_txq_update_write_ptr(il, txq);

out:
 spin_unlock_irqrestore(&il->hcmd_lock, flags);
 return idx;
}
