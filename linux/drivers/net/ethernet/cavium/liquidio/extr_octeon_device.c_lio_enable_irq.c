
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct octeon_instr_queue {int inst_cnt_reg; struct octeon_device* oct_dev; int lock; scalar_t__ pkts_processed; int pkt_in_done; } ;
struct octeon_droq {int pkts_sent_reg; struct octeon_device* oct_dev; scalar_t__ pkt_count; int pkts_pending; } ;
struct octeon_device {int dummy; } ;


 int CN23XX_INTR_RESEND ;
 scalar_t__ OCTEON_CN23XX_PF (struct octeon_device*) ;
 scalar_t__ OCTEON_CN23XX_VF (struct octeon_device*) ;
 scalar_t__ atomic_read (int *) ;
 int readq (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int writel (scalar_t__,int ) ;
 int writeq (int,int ) ;

void lio_enable_irq(struct octeon_droq *droq, struct octeon_instr_queue *iq)
{
 u64 instr_cnt;
 u32 pkts_pend;
 struct octeon_device *oct = ((void*)0);


 if (droq) {
  pkts_pend = (u32)atomic_read(&droq->pkts_pending);
  writel(droq->pkt_count - pkts_pend, droq->pkts_sent_reg);
  droq->pkt_count = pkts_pend;
  oct = droq->oct_dev;
 }
 if (iq) {
  spin_lock_bh(&iq->lock);
  writel(iq->pkts_processed, iq->inst_cnt_reg);
  iq->pkt_in_done -= iq->pkts_processed;
  iq->pkts_processed = 0;

  spin_unlock_bh(&iq->lock);
  oct = iq->oct_dev;
 }



 if (oct && (OCTEON_CN23XX_PF(oct) || OCTEON_CN23XX_VF(oct))) {
  if (droq)
   writeq(CN23XX_INTR_RESEND, droq->pkts_sent_reg);

  else if (iq) {
   instr_cnt = readq(iq->inst_cnt_reg);
   writeq(((instr_cnt & 0xFFFFFFFF00000000ULL) |
    CN23XX_INTR_RESEND),
          iq->inst_cnt_reg);
  }
 }
}
