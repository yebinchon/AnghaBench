
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_scd_txq_cfg_cmd {int scd_queue; int tid; int sta_id; int tx_fifo; int action; } ;
struct iwl_mvm_txq {int stopped; } ;
struct iwl_mvm {int trans; TYPE_1__* queue_info; } ;
typedef int cmd ;
struct TYPE_2__ {int mac80211_ac; int txq_tid; int tid_bitmap; int ra_sta_id; } ;


 int BIT (int) ;
 int EINVAL ;
 int EIO ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_mvm*,char*,int,...) ;
 int IWL_ERR (struct iwl_mvm*,char*,int,...) ;
 int IWL_FRAME_LIMIT ;
 int SCD_CFG_DISABLE_QUEUE ;
 int SCD_QUEUE_CFG ;
 scalar_t__ WARN_ON (int ) ;
 int hweight16 (int ) ;
 int * iwl_mvm_ac_to_tx_fifo ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_reconfig_scd (struct iwl_mvm*,int,int ,int ,int,int ,int) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_scd_txq_cfg_cmd*) ;
 int iwl_trans_txq_disable (int ,int,int) ;
 int iwl_trans_txq_enable_cfg (int ,int,int,int *,unsigned int) ;
 int iwl_trans_txq_set_shared_mode (int ,int,int) ;
 int iwl_trans_wait_tx_queues_empty (int ,int ) ;

__attribute__((used)) static int iwl_mvm_redirect_queue(struct iwl_mvm *mvm, int queue, int tid,
      int ac, int ssn, unsigned int wdg_timeout,
      bool force, struct iwl_mvm_txq *txq)
{
 struct iwl_scd_txq_cfg_cmd cmd = {
  .scd_queue = queue,
  .action = SCD_CFG_DISABLE_QUEUE,
 };
 bool shared_queue;
 int ret;

 if (WARN_ON(iwl_mvm_has_new_tx_api(mvm)))
  return -EINVAL;
 if (ac <= mvm->queue_info[queue].mac80211_ac && !force) {
  IWL_DEBUG_TX_QUEUES(mvm,
        "No redirection needed on TXQ #%d\n",
        queue);
  return 0;
 }

 cmd.sta_id = mvm->queue_info[queue].ra_sta_id;
 cmd.tx_fifo = iwl_mvm_ac_to_tx_fifo[mvm->queue_info[queue].mac80211_ac];
 cmd.tid = mvm->queue_info[queue].txq_tid;
 shared_queue = hweight16(mvm->queue_info[queue].tid_bitmap) > 1;

 IWL_DEBUG_TX_QUEUES(mvm, "Redirecting TXQ #%d to FIFO #%d\n",
       queue, iwl_mvm_ac_to_tx_fifo[ac]);


 txq->stopped = 1;

 ret = iwl_trans_wait_tx_queues_empty(mvm->trans, BIT(queue));
 if (ret) {
  IWL_ERR(mvm, "Error draining queue %d before reconfig\n",
   queue);
  ret = -EIO;
  goto out;
 }


 iwl_trans_txq_disable(mvm->trans, queue, 0);
 ret = iwl_mvm_send_cmd_pdu(mvm, SCD_QUEUE_CFG, 0, sizeof(cmd), &cmd);
 if (ret)
  IWL_ERR(mvm, "Failed SCD disable TXQ %d (ret=%d)\n", queue,
   ret);


 iwl_trans_txq_enable_cfg(mvm->trans, queue, ssn, ((void*)0), wdg_timeout);


 mvm->queue_info[queue].txq_tid = tid;




 iwl_mvm_reconfig_scd(mvm, queue, iwl_mvm_ac_to_tx_fifo[ac],
        cmd.sta_id, tid, IWL_FRAME_LIMIT, ssn);


 mvm->queue_info[queue].mac80211_ac = ac;







 if (shared_queue)
  iwl_trans_txq_set_shared_mode(mvm->trans, queue, 1);

out:

 txq->stopped = 0;

 return ret;
}
