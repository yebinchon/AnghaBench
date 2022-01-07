
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ has_msi; } ;
struct adapter {TYPE_2__* pdev; TYPE_1__ params; int sge; } ;
struct TYPE_4__ {int irq; } ;


 int free_irq (int ,struct adapter*) ;
 int pci_disable_msi (TYPE_2__*) ;
 int t1_interrupts_disable (struct adapter*) ;
 int t1_sge_stop (int ) ;

__attribute__((used)) static void cxgb_down(struct adapter *adapter)
{
 t1_sge_stop(adapter->sge);
 t1_interrupts_disable(adapter);
 free_irq(adapter->pdev->irq, adapter);
 if (adapter->params.has_msi)
  pci_disable_msi(adapter->pdev);
}
