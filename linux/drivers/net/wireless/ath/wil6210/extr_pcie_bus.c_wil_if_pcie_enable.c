
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int n_msi; int mutex; struct pci_dev* pdev; } ;
struct pci_dev {int msi_enabled; int irq; } ;


 int ENODEV ;
 int PCI_IRQ_MSI ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int n_msi ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_clear_master (struct pci_dev*) ;
 scalar_t__ pci_enable_msi (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int wil6210_fini_irq (struct wil6210_priv*,int ) ;
 int wil6210_init_irq (struct wil6210_priv*,int ) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,...) ;
 int wil_err (struct wil6210_priv*,char*,...) ;
 int wil_reset (struct wil6210_priv*,int) ;

__attribute__((used)) static int wil_if_pcie_enable(struct wil6210_priv *wil)
{
 struct pci_dev *pdev = wil->pdev;
 int rc;




 int msi_only = pdev->msi_enabled;

 wil_dbg_misc(wil, "if_pcie_enable\n");

 pci_set_master(pdev);


 switch (n_msi) {
 case 3:
 case 1:
  wil_dbg_misc(wil, "Setup %d MSI interrupts\n", n_msi);
  break;
 case 0:
  wil_dbg_misc(wil, "MSI interrupts disabled, use INTx\n");
  break;
 default:
  wil_err(wil, "Invalid n_msi=%d, default to 1\n", n_msi);
  n_msi = 1;
 }

 if (n_msi == 3 &&
     pci_alloc_irq_vectors(pdev, n_msi, n_msi, PCI_IRQ_MSI) < n_msi) {
  wil_err(wil, "3 MSI mode failed, try 1 MSI\n");
  n_msi = 1;
 }

 if (n_msi == 1 && pci_enable_msi(pdev)) {
  wil_err(wil, "pci_enable_msi failed, use INTx\n");
  n_msi = 0;
 }

 wil->n_msi = n_msi;

 if (wil->n_msi == 0 && msi_only) {
  wil_err(wil, "Interrupt pin not routed, unable to use INTx\n");
  rc = -ENODEV;
  goto stop_master;
 }

 rc = wil6210_init_irq(wil, pdev->irq);
 if (rc)
  goto release_vectors;


 mutex_lock(&wil->mutex);
 rc = wil_reset(wil, 0);
 mutex_unlock(&wil->mutex);
 if (rc)
  goto release_irq;

 return 0;

 release_irq:
 wil6210_fini_irq(wil, pdev->irq);
 release_vectors:

 pci_free_irq_vectors(pdev);
 stop_master:
 pci_clear_master(pdev);
 return rc;
}
