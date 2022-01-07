
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2_irq {scalar_t__ requested; int vector; } ;
struct bnx2 {int irq_nvecs; int * bnx2_napi; struct bnx2_irq* irq_tbl; } ;


 int free_irq (int ,int *) ;

__attribute__((used)) static void
__bnx2_free_irq(struct bnx2 *bp)
{
 struct bnx2_irq *irq;
 int i;

 for (i = 0; i < bp->irq_nvecs; i++) {
  irq = &bp->irq_tbl[i];
  if (irq->requested)
   free_irq(irq->vector, &bp->bnx2_napi[i]);
  irq->requested = 0;
 }
}
