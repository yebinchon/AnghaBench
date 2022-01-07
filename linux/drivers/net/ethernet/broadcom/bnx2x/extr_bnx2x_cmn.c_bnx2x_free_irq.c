
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x {int flags; TYPE_1__* dev; } ;
struct TYPE_2__ {int irq; } ;


 int BNX2X_NUM_ETH_QUEUES (struct bnx2x*) ;
 int CNIC_SUPPORT (struct bnx2x*) ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 int USING_MSIX_FLAG ;
 int USING_SINGLE_MSIX_FLAG ;
 int bnx2x_free_msix_irqs (struct bnx2x*,int) ;
 int free_irq (int ,TYPE_1__*) ;

void bnx2x_free_irq(struct bnx2x *bp)
{
 if (bp->flags & USING_MSIX_FLAG &&
     !(bp->flags & USING_SINGLE_MSIX_FLAG)) {
  int nvecs = BNX2X_NUM_ETH_QUEUES(bp) + CNIC_SUPPORT(bp);


  if (IS_PF(bp))
   nvecs++;

  bnx2x_free_msix_irqs(bp, nvecs);
 } else {
  free_irq(bp->dev->irq, bp->dev);
 }
}
