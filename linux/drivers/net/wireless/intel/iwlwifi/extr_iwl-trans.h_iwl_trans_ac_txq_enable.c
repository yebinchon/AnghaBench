
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_txq_scd_cfg {int fifo; int sta_id; int aggregate; int frame_limit; int tid; } ;
struct iwl_trans {int dummy; } ;


 int IWL_FRAME_LIMIT ;
 int IWL_MAX_TID_COUNT ;
 int iwl_trans_txq_enable_cfg (struct iwl_trans*,int,int ,struct iwl_trans_txq_scd_cfg*,unsigned int) ;

__attribute__((used)) static inline
void iwl_trans_ac_txq_enable(struct iwl_trans *trans, int queue, int fifo,
        unsigned int queue_wdg_timeout)
{
 struct iwl_trans_txq_scd_cfg cfg = {
  .fifo = fifo,
  .sta_id = -1,
  .tid = IWL_MAX_TID_COUNT,
  .frame_limit = IWL_FRAME_LIMIT,
  .aggregate = 0,
 };

 iwl_trans_txq_enable_cfg(trans, queue, 0, &cfg, queue_wdg_timeout);
}
