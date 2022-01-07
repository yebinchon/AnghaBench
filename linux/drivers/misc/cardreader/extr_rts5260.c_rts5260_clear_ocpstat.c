
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int DV3318_OCP_CLR ;
 int DV3318_OCP_INT_CLR ;
 int REG_DV3318_OCPCTL ;
 int REG_OCPCTL ;
 int SD_OCP_INT_CLR ;
 int SD_OC_CLR ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void rts5260_clear_ocpstat(struct rtsx_pcr *pcr)
{
 u8 mask = 0;
 u8 val = 0;

 mask = SD_OCP_INT_CLR | SD_OC_CLR;
 val = SD_OCP_INT_CLR | SD_OC_CLR;

 rtsx_pci_write_register(pcr, REG_OCPCTL, mask, val);
 rtsx_pci_write_register(pcr, REG_DV3318_OCPCTL,
    DV3318_OCP_INT_CLR | DV3318_OCP_CLR,
    DV3318_OCP_INT_CLR | DV3318_OCP_CLR);
 udelay(10);
 rtsx_pci_write_register(pcr, REG_OCPCTL, mask, 0);
 rtsx_pci_write_register(pcr, REG_DV3318_OCPCTL,
    DV3318_OCP_INT_CLR | DV3318_OCP_CLR, 0);
}
