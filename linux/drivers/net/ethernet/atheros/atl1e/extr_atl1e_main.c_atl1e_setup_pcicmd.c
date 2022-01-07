
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int REG_PM_CTRLSTAT ;
 int msleep (int) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void atl1e_setup_pcicmd(struct pci_dev *pdev)
{
 u16 cmd;

 pci_read_config_word(pdev, PCI_COMMAND, &cmd);
 cmd &= ~(PCI_COMMAND_INTX_DISABLE | PCI_COMMAND_IO);
 cmd |= (PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER);
 pci_write_config_word(pdev, PCI_COMMAND, cmd);






 pci_write_config_dword(pdev, REG_PM_CTRLSTAT, 0);
 msleep(1);
}
