
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct iwl_txq {int ampdu; int read_ptr; int write_ptr; int wd_timeout; } ;
struct iwl_trans_txq_scd_cfg {int fifo; int frame_limit; int tid; int sta_id; scalar_t__ aggregate; } ;
struct iwl_trans_pcie {int cmd_queue; scalar_t__ scd_set_active; scalar_t__ scd_base_addr; int queue_used; struct iwl_txq** txq; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {int mq_rx_supported; } ;


 int BIT (int) ;
 int BUILD_RAxTID (int ,int ) ;
 int FRAME_LIMIT ;
 int HBUS_TARG_WRPTR ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_trans*,char*,int,int,...) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ SCD_CONTEXT_QUEUE_OFFSET (int) ;
 int SCD_QUEUE_CTX_REG2_VAL (int ,int ) ;
 int SCD_QUEUE_RDPTR (int) ;
 int SCD_QUEUE_STATUS_BITS (int) ;
 int SCD_QUEUE_STTS_REG_MSK ;
 int SCD_QUEUE_STTS_REG_POS_ACTIVE ;
 int SCD_QUEUE_STTS_REG_POS_TXF ;
 int SCD_QUEUE_STTS_REG_POS_WSL ;
 int WARN_ONCE (int,char*,int) ;
 int WIN_SIZE ;
 int iwl_pcie_txq_set_ratid_map (struct iwl_trans*,int,int) ;
 int iwl_scd_enable_set_active (struct iwl_trans*,int ) ;
 int iwl_scd_txq_disable_agg (struct iwl_trans*,int) ;
 int iwl_scd_txq_enable_agg (struct iwl_trans*,int) ;
 int iwl_scd_txq_set_chain (struct iwl_trans*,int) ;
 int iwl_scd_txq_set_inactive (struct iwl_trans*,int) ;
 int iwl_trans_write_mem32 (struct iwl_trans*,scalar_t__,int) ;
 int iwl_write_direct32 (struct iwl_trans*,int ,int) ;
 int iwl_write_prph (struct iwl_trans*,int ,int) ;
 int msecs_to_jiffies (unsigned int) ;
 scalar_t__ test_and_set_bit (int,int ) ;

bool iwl_trans_pcie_txq_enable(struct iwl_trans *trans, int txq_id, u16 ssn,
          const struct iwl_trans_txq_scd_cfg *cfg,
          unsigned int wdg_timeout)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_txq *txq = trans_pcie->txq[txq_id];
 int fifo = -1;
 bool scd_bug = 0;

 if (test_and_set_bit(txq_id, trans_pcie->queue_used))
  WARN_ONCE(1, "queue %d already used - expect issues", txq_id);

 txq->wd_timeout = msecs_to_jiffies(wdg_timeout);

 if (cfg) {
  fifo = cfg->fifo;


  if (txq_id == trans_pcie->cmd_queue &&
      trans_pcie->scd_set_active)
   iwl_scd_enable_set_active(trans, 0);


  iwl_scd_txq_set_inactive(trans, txq_id);


  if (txq_id != trans_pcie->cmd_queue)
   iwl_scd_txq_set_chain(trans, txq_id);

  if (cfg->aggregate) {
   u16 ra_tid = BUILD_RAxTID(cfg->sta_id, cfg->tid);


   iwl_pcie_txq_set_ratid_map(trans, ra_tid, txq_id);


   iwl_scd_txq_enable_agg(trans, txq_id);
   txq->ampdu = 1;
  } else {





   iwl_scd_txq_disable_agg(trans, txq_id);

   ssn = txq->read_ptr;
  }
 } else {
  scd_bug = !trans->trans_cfg->mq_rx_supported &&
   !((ssn - txq->write_ptr) & 0x3f) &&
   (ssn != txq->write_ptr);
  if (scd_bug)
   ssn++;
 }



 txq->read_ptr = (ssn & 0xff);
 txq->write_ptr = (ssn & 0xff);
 iwl_write_direct32(trans, HBUS_TARG_WRPTR,
      (ssn & 0xff) | (txq_id << 8));

 if (cfg) {
  u8 frame_limit = cfg->frame_limit;

  iwl_write_prph(trans, SCD_QUEUE_RDPTR(txq_id), ssn);


  iwl_trans_write_mem32(trans, trans_pcie->scd_base_addr +
    SCD_CONTEXT_QUEUE_OFFSET(txq_id), 0);
  iwl_trans_write_mem32(trans,
   trans_pcie->scd_base_addr +
   SCD_CONTEXT_QUEUE_OFFSET(txq_id) + sizeof(u32),
   SCD_QUEUE_CTX_REG2_VAL(WIN_SIZE, frame_limit) |
   SCD_QUEUE_CTX_REG2_VAL(FRAME_LIMIT, frame_limit));


  iwl_write_prph(trans, SCD_QUEUE_STATUS_BITS(txq_id),
          (1 << SCD_QUEUE_STTS_REG_POS_ACTIVE) |
          (cfg->fifo << SCD_QUEUE_STTS_REG_POS_TXF) |
          (1 << SCD_QUEUE_STTS_REG_POS_WSL) |
          SCD_QUEUE_STTS_REG_MSK);


  if (txq_id == trans_pcie->cmd_queue &&
      trans_pcie->scd_set_active)
   iwl_scd_enable_set_active(trans, BIT(txq_id));

  IWL_DEBUG_TX_QUEUES(trans,
        "Activate queue %d on FIFO %d WrPtr: %d\n",
        txq_id, fifo, ssn & 0xff);
 } else {
  IWL_DEBUG_TX_QUEUES(trans,
        "Activate queue %d WrPtr: %d\n",
        txq_id, ssn & 0xff);
 }

 return scd_bug;
}
