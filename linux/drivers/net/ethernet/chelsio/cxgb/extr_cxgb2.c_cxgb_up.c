
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int has_msi; } ;
struct adapter {int flags; int sge; TYPE_2__* pdev; TYPE_1__ params; int name; } ;
struct TYPE_5__ {int irq; } ;


 int FULL_INIT_DONE ;
 int IRQF_SHARED ;
 int disable_msi ;
 int enable_hw_csum (struct adapter*) ;
 int pci_disable_msi (TYPE_2__*) ;
 int pci_enable_msi (TYPE_2__*) ;
 int request_irq (int ,int ,int ,int ,struct adapter*) ;
 int t1_init_hw_modules (struct adapter*) ;
 int t1_interrupt ;
 int t1_interrupts_clear (struct adapter*) ;
 int t1_interrupts_enable (struct adapter*) ;
 int t1_sge_start (int ) ;

__attribute__((used)) static int cxgb_up(struct adapter *adapter)
{
 int err = 0;

 if (!(adapter->flags & FULL_INIT_DONE)) {
  err = t1_init_hw_modules(adapter);
  if (err)
   goto out_err;

  enable_hw_csum(adapter);
  adapter->flags |= FULL_INIT_DONE;
 }

 t1_interrupts_clear(adapter);

 adapter->params.has_msi = !disable_msi && !pci_enable_msi(adapter->pdev);
 err = request_irq(adapter->pdev->irq, t1_interrupt,
     adapter->params.has_msi ? 0 : IRQF_SHARED,
     adapter->name, adapter);
 if (err) {
  if (adapter->params.has_msi)
   pci_disable_msi(adapter->pdev);

  goto out_err;
 }

 t1_sge_start(adapter->sge);
 t1_interrupts_enable(adapter);
out_err:
 return err;
}
