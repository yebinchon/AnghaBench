
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {int flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;


 int CXGB4VF_USING_MSIX ;
 int free_irq (int ,struct adapter*) ;
 int free_msix_queue_irqs (struct adapter*) ;
 int quiesce_rx (struct adapter*) ;

__attribute__((used)) static void adapter_down(struct adapter *adapter)
{



 if (adapter->flags & CXGB4VF_USING_MSIX)
  free_msix_queue_irqs(adapter);
 else
  free_irq(adapter->pdev->irq, adapter);




 quiesce_rx(adapter);
}
