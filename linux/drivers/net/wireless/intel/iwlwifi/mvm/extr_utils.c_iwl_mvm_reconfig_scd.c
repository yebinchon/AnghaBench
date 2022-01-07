
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iwl_scd_txq_cfg_cmd {int scd_queue; int window; int sta_id; int tx_fifo; int aggregate; int tid; int ssn; int action; } ;
struct iwl_mvm {TYPE_1__* queue_info; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ tid_bitmap; } ;


 int EINVAL ;
 int ENXIO ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_mvm*,char*,int) ;
 int IWL_MVM_DQA_BSS_CLIENT_QUEUE ;
 int IWL_MVM_DQA_MIN_DATA_QUEUE ;
 int SCD_CFG_ENABLE_QUEUE ;
 int SCD_QUEUE_CFG ;
 scalar_t__ WARN (int,char*,int) ;
 scalar_t__ WARN_ON (int ) ;
 int WARN_ONCE (int,char*,int,int,int) ;
 int cpu_to_le16 (int ) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_scd_txq_cfg_cmd*) ;

int iwl_mvm_reconfig_scd(struct iwl_mvm *mvm, int queue, int fifo, int sta_id,
    int tid, int frame_limit, u16 ssn)
{
 struct iwl_scd_txq_cfg_cmd cmd = {
  .scd_queue = queue,
  .action = SCD_CFG_ENABLE_QUEUE,
  .window = frame_limit,
  .sta_id = sta_id,
  .ssn = cpu_to_le16(ssn),
  .tx_fifo = fifo,
  .aggregate = (queue >= IWL_MVM_DQA_MIN_DATA_QUEUE ||
         queue == IWL_MVM_DQA_BSS_CLIENT_QUEUE),
  .tid = tid,
 };
 int ret;

 if (WARN_ON(iwl_mvm_has_new_tx_api(mvm)))
  return -EINVAL;

 if (WARN(mvm->queue_info[queue].tid_bitmap == 0,
   "Trying to reconfig unallocated queue %d\n", queue))
  return -ENXIO;

 IWL_DEBUG_TX_QUEUES(mvm, "Reconfig SCD for TXQ #%d\n", queue);

 ret = iwl_mvm_send_cmd_pdu(mvm, SCD_QUEUE_CFG, 0, sizeof(cmd), &cmd);
 WARN_ONCE(ret, "Failed to re-configure queue %d on FIFO %d, ret=%d\n",
    queue, fifo, ret);

 return ret;
}
