
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_trans_txq_scd_cfg {int fifo; int sta_id; int tid; int frame_limit; int aggregate; } ;
struct iwl_trans {int dummy; } ;


 int iwl_trans_txq_enable_cfg (struct iwl_trans*,int,int ,struct iwl_trans_txq_scd_cfg*,unsigned int) ;

__attribute__((used)) static inline void iwl_trans_txq_enable(struct iwl_trans *trans, int queue,
     int fifo, int sta_id, int tid,
     int frame_limit, u16 ssn,
     unsigned int queue_wdg_timeout)
{
 struct iwl_trans_txq_scd_cfg cfg = {
  .fifo = fifo,
  .sta_id = sta_id,
  .tid = tid,
  .frame_limit = frame_limit,
  .aggregate = sta_id >= 0,
 };

 iwl_trans_txq_enable_cfg(trans, queue, ssn, &cfg, queue_wdg_timeout);
}
