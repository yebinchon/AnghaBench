
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int msleep (int) ;
 int pci_cfg_access_lock (struct pci_dev*) ;
 int pci_cfg_access_unlock (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_pcie_reset_state (struct pci_dev*,int ) ;
 int pcie_deassert_reset ;
 int pcie_warm_reset ;

__attribute__((used)) static int genwqe_pci_fundamental_reset(struct pci_dev *pci_dev)
{
 int rc;





 pci_cfg_access_lock(pci_dev);
 pci_save_state(pci_dev);
 rc = pci_set_pcie_reset_state(pci_dev, pcie_warm_reset);
 if (!rc) {

  msleep(250);
  pci_set_pcie_reset_state(pci_dev, pcie_deassert_reset);

  msleep(2000);
 }
 pci_restore_state(pci_dev);
 pci_cfg_access_unlock(pci_dev);
 return rc;
}
