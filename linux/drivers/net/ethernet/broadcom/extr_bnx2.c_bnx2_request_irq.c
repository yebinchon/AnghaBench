
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2_irq {int requested; int name; int handler; int vector; } ;
struct bnx2 {int flags; int irq_nvecs; int * bnx2_napi; struct bnx2_irq* irq_tbl; } ;


 int BNX2_FLAG_USING_MSI_OR_MSIX ;
 unsigned long IRQF_SHARED ;
 int request_irq (int ,int ,unsigned long,int ,int *) ;

__attribute__((used)) static int
bnx2_request_irq(struct bnx2 *bp)
{
 unsigned long flags;
 struct bnx2_irq *irq;
 int rc = 0, i;

 if (bp->flags & BNX2_FLAG_USING_MSI_OR_MSIX)
  flags = 0;
 else
  flags = IRQF_SHARED;

 for (i = 0; i < bp->irq_nvecs; i++) {
  irq = &bp->irq_tbl[i];
  rc = request_irq(irq->vector, irq->handler, flags, irq->name,
     &bp->bnx2_napi[i]);
  if (rc)
   break;
  irq->requested = 1;
 }
 return rc;
}
