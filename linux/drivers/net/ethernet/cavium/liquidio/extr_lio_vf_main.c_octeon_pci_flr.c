
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int pci_dev; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int pci_cfg_access_lock (int ) ;
 int pci_cfg_access_unlock (int ) ;
 int pci_restore_state (int ) ;
 int pci_save_state (int ) ;
 int pci_write_config_word (int ,int ,int ) ;
 int pcie_flr (int ) ;

__attribute__((used)) static void octeon_pci_flr(struct octeon_device *oct)
{
 pci_save_state(oct->pci_dev);

 pci_cfg_access_lock(oct->pci_dev);


 pci_write_config_word(oct->pci_dev, PCI_COMMAND,
         PCI_COMMAND_INTX_DISABLE);

 pcie_flr(oct->pci_dev);

 pci_cfg_access_unlock(oct->pci_dev);

 pci_restore_state(oct->pci_dev);
}
