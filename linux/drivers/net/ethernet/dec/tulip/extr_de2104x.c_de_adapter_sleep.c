
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct de_private {int pdev; scalar_t__ de21040; } ;


 int CSR13 ;
 int PCIPM ;
 int PM_Sleep ;
 int dw32 (int ,int ) ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static void de_adapter_sleep (struct de_private *de)
{
 u32 pmctl;

 if (de->de21040)
  return;

 dw32(CSR13, 0);
 pci_read_config_dword(de->pdev, PCIPM, &pmctl);
 pmctl |= PM_Sleep;
 pci_write_config_dword(de->pdev, PCIPM, pmctl);
}
