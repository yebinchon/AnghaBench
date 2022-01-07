
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm {TYPE_2__* trans; } ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {int min_txq_size; int min_256_ba_txq_size; } ;


 int IWL_DEBUG_TX_QUEUES (struct iwl_mvm*,char*,int,...) ;
 int IWL_DEFAULT_QUEUE_SIZE ;
 int IWL_MAX_TID_COUNT ;
 int IWL_MGMT_QUEUE_SIZE ;
 int IWL_MGMT_TID ;
 int SCD_QUEUE_CFG ;
 int TX_QUEUE_CFG_ENABLE_QUEUE ;
 int cpu_to_le16 (int ) ;
 int iwl_trans_txq_alloc (TYPE_2__*,int ,int ,int ,int ,int,unsigned int) ;
 int max_t (int ,int ,int ) ;
 int u32 ;

__attribute__((used)) static int iwl_mvm_tvqm_enable_txq(struct iwl_mvm *mvm,
       u8 sta_id, u8 tid, unsigned int timeout)
{
 int queue, size = max_t(u32, IWL_DEFAULT_QUEUE_SIZE,
    mvm->trans->cfg->min_256_ba_txq_size);

 if (tid == IWL_MAX_TID_COUNT) {
  tid = IWL_MGMT_TID;
  size = max_t(u32, IWL_MGMT_QUEUE_SIZE,
        mvm->trans->cfg->min_txq_size);
 }
 queue = iwl_trans_txq_alloc(mvm->trans,
        cpu_to_le16(TX_QUEUE_CFG_ENABLE_QUEUE),
        sta_id, tid, SCD_QUEUE_CFG, size, timeout);

 if (queue < 0) {
  IWL_DEBUG_TX_QUEUES(mvm,
        "Failed allocating TXQ for sta %d tid %d, ret: %d\n",
        sta_id, tid, queue);
  return queue;
 }

 IWL_DEBUG_TX_QUEUES(mvm, "Enabling TXQ #%d for sta %d tid %d\n",
       queue, sta_id, tid);

 IWL_DEBUG_TX_QUEUES(mvm, "Enabling TXQ #%d\n", queue);

 return queue;
}
