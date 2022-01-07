
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct status_block {scalar_t__ status_idx; } ;
struct TYPE_2__ {struct status_block* msi; } ;
struct bnx2_napi {scalar_t__ last_status_idx; int napi; TYPE_1__ status_blk; struct bnx2* bp; } ;
struct bnx2 {int intr_sem; } ;
typedef int irqreturn_t ;


 int BNX2_PCICFG_INT_ACK_CMD ;
 int BNX2_PCICFG_INT_ACK_CMD_MASK_INT ;
 int BNX2_PCICFG_INT_ACK_CMD_USE_INT_HC_PARAM ;
 int BNX2_PCICFG_MISC_STATUS ;
 int BNX2_PCICFG_MISC_STATUS_INTA_VALUE ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __napi_schedule (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t
bnx2_interrupt(int irq, void *dev_instance)
{
 struct bnx2_napi *bnapi = dev_instance;
 struct bnx2 *bp = bnapi->bp;
 struct status_block *sblk = bnapi->status_blk.msi;







 if ((sblk->status_idx == bnapi->last_status_idx) &&
     (BNX2_RD(bp, BNX2_PCICFG_MISC_STATUS) &
      BNX2_PCICFG_MISC_STATUS_INTA_VALUE))
  return IRQ_NONE;

 BNX2_WR(bp, BNX2_PCICFG_INT_ACK_CMD,
  BNX2_PCICFG_INT_ACK_CMD_USE_INT_HC_PARAM |
  BNX2_PCICFG_INT_ACK_CMD_MASK_INT);




 BNX2_RD(bp, BNX2_PCICFG_INT_ACK_CMD);


 if (unlikely(atomic_read(&bp->intr_sem) != 0))
  return IRQ_HANDLED;

 if (napi_schedule_prep(&bnapi->napi)) {
  bnapi->last_status_idx = sblk->status_idx;
  __napi_schedule(&bnapi->napi);
 }

 return IRQ_HANDLED;
}
