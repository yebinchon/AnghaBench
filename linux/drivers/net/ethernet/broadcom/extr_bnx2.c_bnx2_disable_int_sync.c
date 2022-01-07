
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2 {int irq_nvecs; TYPE_1__* irq_tbl; int dev; int intr_sem; } ;
struct TYPE_2__ {int vector; } ;


 int atomic_inc (int *) ;
 int bnx2_disable_int (struct bnx2*) ;
 int netif_running (int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void
bnx2_disable_int_sync(struct bnx2 *bp)
{
 int i;

 atomic_inc(&bp->intr_sem);
 if (!netif_running(bp->dev))
  return;

 bnx2_disable_int(bp);
 for (i = 0; i < bp->irq_nvecs; i++)
  synchronize_irq(bp->irq_tbl[i].vector);
}
