
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_rx_ring_info {int rx_next_cons; TYPE_1__* bnapi; } ;
struct bnxt {int sp_event; } ;
struct TYPE_2__ {int in_reset; } ;


 int BNXT_RESET_TASK_SP_EVENT ;
 int bnxt_queue_sp_work (struct bnxt*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void bnxt_sched_reset(struct bnxt *bp, struct bnxt_rx_ring_info *rxr)
{
 if (!rxr->bnapi->in_reset) {
  rxr->bnapi->in_reset = 1;
  set_bit(BNXT_RESET_TASK_SP_EVENT, &bp->sp_event);
  bnxt_queue_sp_work(bp);
 }
 rxr->rx_next_cons = 0xffff;
}
