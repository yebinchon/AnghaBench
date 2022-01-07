
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int vendor; int device; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int PCI_CACHE_LINE_SIZE ;
 int PCI_LATENCY_TIMER ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

__attribute__((used)) static void cas_program_bridge(struct pci_dev *cas_pdev)
{
 struct pci_dev *pdev = cas_pdev->bus->self;
 u32 val;

 if (!pdev)
  return;

 if (pdev->vendor != 0x8086 || pdev->device != 0x537c)
  return;






 pci_read_config_dword(pdev, 0x40, &val);
 val &= ~0x00040000;
 pci_write_config_dword(pdev, 0x40, val);
 pci_write_config_word(pdev, 0x50, (5 << 10) | 0x3ff);
 pci_write_config_word(pdev, 0x52,
         (0x7 << 13) |
         (0x7 << 10) |
         (0x7 << 7) |
         (0x7 << 4) |
         (0xf << 0));


 pci_write_config_byte(pdev, PCI_CACHE_LINE_SIZE, 0x08);




 pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 0xff);
}
