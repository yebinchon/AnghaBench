
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int instr_processed; } ;
struct octeon_instr_queue {scalar_t__ octeon_read_index; scalar_t__ flush_index; int iq_flush_running_lock; int lock; int last_db_time; TYPE_2__ stats; int instr_pending; int pkts_processed; } ;
struct TYPE_3__ {scalar_t__ (* update_iq_read_idx ) (struct octeon_instr_queue*) ;} ;
struct octeon_device {TYPE_1__ fn_list; } ;


 int atomic_sub (scalar_t__,int *) ;
 int jiffies ;
 scalar_t__ lio_process_iq_request_list (struct octeon_device*,struct octeon_instr_queue*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ stub1 (struct octeon_instr_queue*) ;

int
octeon_flush_iq(struct octeon_device *oct, struct octeon_instr_queue *iq,
  u32 napi_budget)
{
 u32 inst_processed = 0;
 u32 tot_inst_processed = 0;
 int tx_done = 1;

 if (!spin_trylock(&iq->iq_flush_running_lock))
  return tx_done;

 spin_lock_bh(&iq->lock);

 iq->octeon_read_index = oct->fn_list.update_iq_read_idx(iq);

 do {

  if (iq->flush_index == iq->octeon_read_index)
   break;

  if (napi_budget)
   inst_processed =
    lio_process_iq_request_list(oct, iq,
           napi_budget -
           tot_inst_processed);
  else
   inst_processed =
    lio_process_iq_request_list(oct, iq, 0);

  if (inst_processed) {
   iq->pkts_processed += inst_processed;
   atomic_sub(inst_processed, &iq->instr_pending);
   iq->stats.instr_processed += inst_processed;
  }

  tot_inst_processed += inst_processed;
 } while (tot_inst_processed < napi_budget);

 if (napi_budget && (tot_inst_processed >= napi_budget))
  tx_done = 0;

 iq->last_db_time = jiffies;

 spin_unlock_bh(&iq->lock);

 spin_unlock(&iq->iq_flush_running_lock);

 return tx_done;
}
