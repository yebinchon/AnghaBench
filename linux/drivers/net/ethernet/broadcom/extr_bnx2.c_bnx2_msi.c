
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msi; } ;
struct bnx2_napi {int napi; TYPE_1__ status_blk; struct bnx2* bp; } ;
struct bnx2 {int intr_sem; } ;
typedef int irqreturn_t ;


 int BNX2_PCICFG_INT_ACK_CMD ;
 int BNX2_PCICFG_INT_ACK_CMD_MASK_INT ;
 int BNX2_PCICFG_INT_ACK_CMD_USE_INT_HC_PARAM ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int IRQ_HANDLED ;
 scalar_t__ atomic_read (int *) ;
 int napi_schedule (int *) ;
 int prefetch (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t
bnx2_msi(int irq, void *dev_instance)
{
 struct bnx2_napi *bnapi = dev_instance;
 struct bnx2 *bp = bnapi->bp;

 prefetch(bnapi->status_blk.msi);
 BNX2_WR(bp, BNX2_PCICFG_INT_ACK_CMD,
  BNX2_PCICFG_INT_ACK_CMD_USE_INT_HC_PARAM |
  BNX2_PCICFG_INT_ACK_CMD_MASK_INT);


 if (unlikely(atomic_read(&bp->intr_sem) != 0))
  return IRQ_HANDLED;

 napi_schedule(&bnapi->napi);

 return IRQ_HANDLED;
}
