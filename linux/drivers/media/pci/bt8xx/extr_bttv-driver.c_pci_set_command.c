
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 unsigned int PCI_COMMAND_MEMORY ;
 int pci_read_config_dword (struct pci_dev*,int ,unsigned int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,unsigned int) ;

__attribute__((used)) static void pci_set_command(struct pci_dev *dev)
{







}
