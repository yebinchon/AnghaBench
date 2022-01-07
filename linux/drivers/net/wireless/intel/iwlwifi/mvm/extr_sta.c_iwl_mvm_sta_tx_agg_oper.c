
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u16 ;
struct iwl_trans_txq_scd_cfg {size_t tid; size_t frame_limit; int aggregate; int fifo; int sta_id; } ;
struct iwl_mvm_tid_data {size_t ssn; int txq_id; int amsdu_in_ampdu_allowed; int state; } ;
struct TYPE_8__ {int agg_frame_cnt_limit; } ;
struct TYPE_6__ {TYPE_4__ lq; } ;
struct TYPE_7__ {TYPE_2__ rs_drv; } ;
struct iwl_mvm_sta {TYPE_3__ lq_sta; int max_agg_bufsize; int sta_id; int lock; int agg_tids; struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {TYPE_1__* queue_info; int trans; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; int tdls; } ;
typedef enum iwl_mvm_queue_status { ____Placeholder_iwl_mvm_queue_status } iwl_mvm_queue_status ;
struct TYPE_5__ {int status; } ;


 int BIT (int) ;
 int BITS_PER_BYTE ;
 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int EIO ;
 int ENOTSUPP ;
 int IWL_AGG_ON ;
 int IWL_DEBUG_HT (struct iwl_mvm*,char*,int ,size_t) ;
 int IWL_ERR (struct iwl_mvm*,char*,...) ;
 size_t IWL_FRAME_LIMIT ;
 int IWL_MAX_TID_COUNT ;
 scalar_t__ IWL_MVM_QUEUE_READY ;
 int IWL_MVM_QUEUE_SHARED ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int * iwl_mvm_ac_to_tx_fifo ;
 int iwl_mvm_enable_txq (struct iwl_mvm*,struct ieee80211_sta*,int,size_t,struct iwl_trans_txq_scd_cfg*,unsigned int) ;
 unsigned int iwl_mvm_get_wd_timeout (struct iwl_mvm*,struct ieee80211_vif*,int ,int) ;
 scalar_t__ iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_has_tlc_offload (struct iwl_mvm*) ;
 int iwl_mvm_reconfig_scd (struct iwl_mvm*,int,int ,int ,size_t,size_t,size_t) ;
 int iwl_mvm_send_lq_cmd (struct iwl_mvm*,TYPE_4__*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int iwl_mvm_sta_tx_agg (struct iwl_mvm*,struct ieee80211_sta*,size_t,int,int) ;
 int iwl_trans_wait_tx_queues_empty (int ,int ) ;
 int min (int ,size_t) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 size_t* tid_to_mac80211_ac ;

int iwl_mvm_sta_tx_agg_oper(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
       struct ieee80211_sta *sta, u16 tid, u16 buf_size,
       bool amsdu)
{
 struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);
 struct iwl_mvm_tid_data *tid_data = &mvmsta->tid_data[tid];
 unsigned int wdg_timeout =
  iwl_mvm_get_wd_timeout(mvm, vif, sta->tdls, 0);
 int queue, ret;
 bool alloc_queue = 1;
 enum iwl_mvm_queue_status queue_status;
 u16 ssn;

 struct iwl_trans_txq_scd_cfg cfg = {
  .sta_id = mvmsta->sta_id,
  .tid = tid,
  .frame_limit = buf_size,
  .aggregate = 1,
 };





 if (WARN_ON_ONCE(iwl_mvm_has_tlc_offload(mvm)))
  return -EINVAL;

 BUILD_BUG_ON((sizeof(mvmsta->agg_tids) * BITS_PER_BYTE)
       != IWL_MAX_TID_COUNT);

 spin_lock_bh(&mvmsta->lock);
 ssn = tid_data->ssn;
 queue = tid_data->txq_id;
 tid_data->state = IWL_AGG_ON;
 mvmsta->agg_tids |= BIT(tid);
 tid_data->ssn = 0xffff;
 tid_data->amsdu_in_ampdu_allowed = amsdu;
 spin_unlock_bh(&mvmsta->lock);

 if (iwl_mvm_has_new_tx_api(mvm)) {
  if (buf_size < IWL_FRAME_LIMIT)
   return -ENOTSUPP;

  ret = iwl_mvm_sta_tx_agg(mvm, sta, tid, queue, 1);
  if (ret)
   return -EIO;
  goto out;
 }

 cfg.fifo = iwl_mvm_ac_to_tx_fifo[tid_to_mac80211_ac[tid]];

 queue_status = mvm->queue_info[queue].status;


 if (mvm->queue_info[queue].status == IWL_MVM_QUEUE_READY)
  alloc_queue = 0;





 if (!alloc_queue && buf_size < IWL_FRAME_LIMIT) {




  ret = iwl_trans_wait_tx_queues_empty(mvm->trans,
           BIT(queue));
  if (ret) {
   IWL_ERR(mvm,
    "Error draining queue before reconfig\n");
   return ret;
  }

  ret = iwl_mvm_reconfig_scd(mvm, queue, cfg.fifo,
        mvmsta->sta_id, tid,
        buf_size, ssn);
  if (ret) {
   IWL_ERR(mvm,
    "Error reconfiguring TXQ #%d\n", queue);
   return ret;
  }
 }

 if (alloc_queue)
  iwl_mvm_enable_txq(mvm, sta, queue, ssn,
       &cfg, wdg_timeout);


 if (queue_status != IWL_MVM_QUEUE_SHARED) {
  ret = iwl_mvm_sta_tx_agg(mvm, sta, tid, queue, 1);
  if (ret)
   return -EIO;
 }


 mvm->queue_info[queue].status = IWL_MVM_QUEUE_READY;

out:







 mvmsta->max_agg_bufsize =
  min(mvmsta->max_agg_bufsize, buf_size);
 mvmsta->lq_sta.rs_drv.lq.agg_frame_cnt_limit = mvmsta->max_agg_bufsize;

 IWL_DEBUG_HT(mvm, "Tx aggregation enabled on ra = %pM tid = %d\n",
       sta->addr, tid);

 return iwl_mvm_send_lq_cmd(mvm, &mvmsta->lq_sta.rs_drv.lq);
}
