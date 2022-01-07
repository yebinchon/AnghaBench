
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adapter {int flags; TYPE_2__* pdev; TYPE_1__* msix_info; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int vec; } ;


 int CXGB4_FULL_INIT_DONE ;
 int CXGB4_USING_MSIX ;
 int free_irq (int ,struct adapter*) ;
 int free_msix_queue_irqs (struct adapter*) ;
 int quiesce_rx (struct adapter*) ;
 int t4_intr_disable (struct adapter*) ;

__attribute__((used)) static void disable_interrupts(struct adapter *adap)
{
 if (adap->flags & CXGB4_FULL_INIT_DONE) {
  t4_intr_disable(adap);
  if (adap->flags & CXGB4_USING_MSIX) {
   free_msix_queue_irqs(adap);
   free_irq(adap->msix_info[0].vec, adap);
  } else {
   free_irq(adap->pdev->irq, adap);
  }
  quiesce_rx(adap);
 }
}
