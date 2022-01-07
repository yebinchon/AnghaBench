
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct de_private {int pdev; scalar_t__ de21040; } ;


 int PCIPM ;
 int PM_Mask ;
 int msleep (int) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void de_adapter_wake (struct de_private *de)
{
 u32 pmctl;

 if (de->de21040)
  return;

 pci_read_config_dword(de->pdev, PCIPM, &pmctl);
 if (pmctl & PM_Mask) {
  pmctl &= ~PM_Mask;
  pci_write_config_dword(de->pdev, PCIPM, pmctl);


  msleep(10);
 }
}
