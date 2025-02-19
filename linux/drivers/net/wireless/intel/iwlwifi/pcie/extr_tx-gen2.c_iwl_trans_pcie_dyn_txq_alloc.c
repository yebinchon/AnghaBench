
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dma; } ;
struct iwl_txq {TYPE_1__ bc_tbl; int dma_addr; } ;
struct iwl_tx_queue_cfg_cmd {int cb_size; void* byte_cnt_addr; void* tfdq_addr; int tid; int sta_id; int flags; } ;
struct iwl_trans {int dummy; } ;
struct iwl_host_cmd {int id; int flags; int data; int len; } ;
typedef int __le16 ;


 int CMD_WANT_SKB ;
 int TFD_QUEUE_CB_SIZE (int) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int iwl_pcie_gen2_txq_free_memory (struct iwl_trans*,struct iwl_txq*) ;
 int iwl_trans_pcie_dyn_txq_alloc_dma (struct iwl_trans*,struct iwl_txq**,int,unsigned int) ;
 int iwl_trans_pcie_txq_alloc_response (struct iwl_trans*,struct iwl_txq*,struct iwl_host_cmd*) ;
 int iwl_trans_send_cmd (struct iwl_trans*,struct iwl_host_cmd*) ;

int iwl_trans_pcie_dyn_txq_alloc(struct iwl_trans *trans,
     __le16 flags, u8 sta_id, u8 tid,
     int cmd_id, int size,
     unsigned int timeout)
{
 struct iwl_txq *txq = ((void*)0);
 struct iwl_tx_queue_cfg_cmd cmd = {
  .flags = flags,
  .sta_id = sta_id,
  .tid = tid,
 };
 struct iwl_host_cmd hcmd = {
  .id = cmd_id,
  .len = { sizeof(cmd) },
  .data = { &cmd, },
  .flags = CMD_WANT_SKB,
 };
 int ret;

 ret = iwl_trans_pcie_dyn_txq_alloc_dma(trans, &txq, size, timeout);
 if (ret)
  return ret;

 cmd.tfdq_addr = cpu_to_le64(txq->dma_addr);
 cmd.byte_cnt_addr = cpu_to_le64(txq->bc_tbl.dma);
 cmd.cb_size = cpu_to_le32(TFD_QUEUE_CB_SIZE(size));

 ret = iwl_trans_send_cmd(trans, &hcmd);
 if (ret)
  goto error;

 return iwl_trans_pcie_txq_alloc_response(trans, txq, &hcmd);

error:
 iwl_pcie_gen2_txq_free_memory(trans, txq);
 return ret;
}
