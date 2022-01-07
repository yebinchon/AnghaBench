
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int dev_err (int *,char*,int) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static int cio2_pci_config_setup(struct pci_dev *dev)
{
 u16 pci_command;
 int r = pci_enable_msi(dev);

 if (r) {
  dev_err(&dev->dev, "failed to enable MSI (%d)\n", r);
  return r;
 }

 pci_read_config_word(dev, PCI_COMMAND, &pci_command);
 pci_command |= PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER |
  PCI_COMMAND_INTX_DISABLE;
 pci_write_config_word(dev, PCI_COMMAND, pci_command);

 return 0;
}
