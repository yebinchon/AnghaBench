
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct chelsio_pci_params {unsigned short speed; int width; int is_pcix; } ;
struct TYPE_3__ {int pdev; } ;
typedef TYPE_1__ adapter_t ;


 int A_PCICFG_MODE ;
 int F_PCI_MODE_64BIT ;
 int F_PCI_MODE_PCIX ;
 size_t G_PCI_MODE_CLK (int) ;
 int pci_read_config_dword (int ,int ,int*) ;

__attribute__((used)) static void get_pci_mode(adapter_t *adapter, struct chelsio_pci_params *p)
{
 static const unsigned short speed_map[] = { 33, 66, 100, 133 };
 u32 pci_mode;

 pci_read_config_dword(adapter->pdev, A_PCICFG_MODE, &pci_mode);
 p->speed = speed_map[G_PCI_MODE_CLK(pci_mode)];
 p->width = (pci_mode & F_PCI_MODE_64BIT) ? 64 : 32;
 p->is_pcix = (pci_mode & F_PCI_MODE_PCIX) != 0;
}
