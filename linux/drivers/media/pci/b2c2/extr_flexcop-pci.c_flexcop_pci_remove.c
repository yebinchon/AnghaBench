
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct flexcop_pci {int fc_dev; int irq_check_work; } ;


 int cancel_delayed_work (int *) ;
 int flexcop_device_exit (int ) ;
 int flexcop_device_kfree (int ) ;
 int flexcop_pci_dma_exit (struct flexcop_pci*) ;
 int flexcop_pci_exit (struct flexcop_pci*) ;
 scalar_t__ irq_chk_intv ;
 struct flexcop_pci* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void flexcop_pci_remove(struct pci_dev *pdev)
{
 struct flexcop_pci *fc_pci = pci_get_drvdata(pdev);

 if (irq_chk_intv > 0)
  cancel_delayed_work(&fc_pci->irq_check_work);

 flexcop_pci_dma_exit(fc_pci);
 flexcop_device_exit(fc_pci->fc_dev);
 flexcop_pci_exit(fc_pci);
 flexcop_device_kfree(fc_pci->fc_dev);
}
