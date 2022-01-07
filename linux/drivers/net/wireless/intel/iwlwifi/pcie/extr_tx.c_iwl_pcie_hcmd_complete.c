
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct page {int dummy; } ;
struct iwl_txq {int lock; TYPE_2__* entries; int write_ptr; int read_ptr; } ;
struct iwl_trans_pcie {size_t cmd_queue; int wait_command_queue; int rx_page_order; struct iwl_txq** txq; } ;
struct iwl_trans {int status; int op_mode; } ;
struct TYPE_5__ {int sequence; } ;
struct iwl_rx_packet {TYPE_1__ hdr; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct TYPE_7__ {int cmd; int group_id; } ;
struct iwl_device_cmd {TYPE_3__ hdr; } ;
struct iwl_cmd_meta {int flags; TYPE_4__* source; } ;
struct TYPE_8__ {unsigned long _rx_page_addr; int _rx_page_order; struct iwl_rx_packet* resp_pkt; } ;
struct TYPE_6__ {struct iwl_cmd_meta meta; struct iwl_device_cmd* cmd; } ;


 int CMD_ASYNC ;
 int CMD_WANT_ASYNC_CALLBACK ;
 int CMD_WANT_SKB ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*,int ) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int IWL_WARN (struct iwl_trans*,char*,int ) ;
 int SEQ_TO_INDEX (int ) ;
 int SEQ_TO_QUEUE (int ) ;
 int STATUS_SYNC_HCMD_ACTIVE ;
 scalar_t__ WARN (int,char*,int,int,int ,int ,int ) ;
 int clear_bit (int ,int *) ;
 int iwl_cmd_id (int ,int ,int ) ;
 int iwl_get_cmd_string (struct iwl_trans*,int ) ;
 int iwl_op_mode_async_cb (int ,struct iwl_device_cmd*) ;
 int iwl_pcie_cmdq_reclaim (struct iwl_trans*,int,int) ;
 int iwl_pcie_get_cmd_index (struct iwl_txq*,int) ;
 int iwl_pcie_tfd_unmap (struct iwl_trans*,struct iwl_cmd_meta*,struct iwl_txq*,int) ;
 int iwl_print_hex_error (struct iwl_trans*,struct iwl_rx_packet*,int) ;
 int le16_to_cpu (int ) ;
 scalar_t__ page_address (struct page*) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 struct page* rxb_steal_page (struct iwl_rx_cmd_buffer*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

void iwl_pcie_hcmd_complete(struct iwl_trans *trans,
       struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 u16 sequence = le16_to_cpu(pkt->hdr.sequence);
 u8 group_id;
 u32 cmd_id;
 int txq_id = SEQ_TO_QUEUE(sequence);
 int index = SEQ_TO_INDEX(sequence);
 int cmd_index;
 struct iwl_device_cmd *cmd;
 struct iwl_cmd_meta *meta;
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_txq *txq = trans_pcie->txq[trans_pcie->cmd_queue];




 if (WARN(txq_id != trans_pcie->cmd_queue,
   "wrong command queue %d (should be %d), sequence 0x%X readp=%d writep=%d\n",
   txq_id, trans_pcie->cmd_queue, sequence, txq->read_ptr,
   txq->write_ptr)) {
  iwl_print_hex_error(trans, pkt, 32);
  return;
 }

 spin_lock_bh(&txq->lock);

 cmd_index = iwl_pcie_get_cmd_index(txq, index);
 cmd = txq->entries[cmd_index].cmd;
 meta = &txq->entries[cmd_index].meta;
 group_id = cmd->hdr.group_id;
 cmd_id = iwl_cmd_id(cmd->hdr.cmd, group_id, 0);

 iwl_pcie_tfd_unmap(trans, meta, txq, index);


 if (meta->flags & CMD_WANT_SKB) {
  struct page *p = rxb_steal_page(rxb);

  meta->source->resp_pkt = pkt;
  meta->source->_rx_page_addr = (unsigned long)page_address(p);
  meta->source->_rx_page_order = trans_pcie->rx_page_order;
 }

 if (meta->flags & CMD_WANT_ASYNC_CALLBACK)
  iwl_op_mode_async_cb(trans->op_mode, cmd);

 iwl_pcie_cmdq_reclaim(trans, txq_id, index);

 if (!(meta->flags & CMD_ASYNC)) {
  if (!test_bit(STATUS_SYNC_HCMD_ACTIVE, &trans->status)) {
   IWL_WARN(trans,
     "HCMD_ACTIVE already clear for command %s\n",
     iwl_get_cmd_string(trans, cmd_id));
  }
  clear_bit(STATUS_SYNC_HCMD_ACTIVE, &trans->status);
  IWL_DEBUG_INFO(trans, "Clearing HCMD_ACTIVE for command %s\n",
          iwl_get_cmd_string(trans, cmd_id));
  wake_up(&trans_pcie->wait_command_queue);
 }

 meta->flags = 0;

 spin_unlock_bh(&txq->lock);
}
