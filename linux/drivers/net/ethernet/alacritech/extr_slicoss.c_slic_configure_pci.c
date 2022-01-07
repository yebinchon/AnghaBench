
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void slic_configure_pci(struct pci_dev *pdev)
{
 u16 old;
 u16 cmd;

 pci_read_config_word(pdev, PCI_COMMAND, &old);

 cmd = old | PCI_COMMAND_PARITY | PCI_COMMAND_SERR;
 if (old != cmd)
  pci_write_config_word(pdev, PCI_COMMAND, cmd);
}
