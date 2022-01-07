
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_adapter {int flags; int pdev; } ;


 int FLAG_MSI_ENABLED ;
 int PCI_COMMAND ;
 int PCI_COMMAND_SERR ;
 int e1000_test_msi_interrupt (struct e1000_adapter*) ;
 int pci_read_config_word (int ,int ,int*) ;
 int pci_write_config_word (int ,int ,int) ;

__attribute__((used)) static int e1000_test_msi(struct e1000_adapter *adapter)
{
 int err;
 u16 pci_cmd;

 if (!(adapter->flags & FLAG_MSI_ENABLED))
  return 0;


 pci_read_config_word(adapter->pdev, PCI_COMMAND, &pci_cmd);
 if (pci_cmd & PCI_COMMAND_SERR)
  pci_write_config_word(adapter->pdev, PCI_COMMAND,
          pci_cmd & ~PCI_COMMAND_SERR);

 err = e1000_test_msi_interrupt(adapter);


 if (pci_cmd & PCI_COMMAND_SERR) {
  pci_read_config_word(adapter->pdev, PCI_COMMAND, &pci_cmd);
  pci_cmd |= PCI_COMMAND_SERR;
  pci_write_config_word(adapter->pdev, PCI_COMMAND, pci_cmd);
 }

 return err;
}
