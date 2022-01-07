
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;


 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 int wil6210_fini_irq (struct wil6210_priv*,int ) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;

__attribute__((used)) static int wil_if_pcie_disable(struct wil6210_priv *wil)
{
 struct pci_dev *pdev = wil->pdev;

 wil_dbg_misc(wil, "if_pcie_disable\n");

 pci_clear_master(pdev);

 wil6210_fini_irq(wil, pdev->irq);

 pci_disable_msi(pdev);


 return 0;
}
