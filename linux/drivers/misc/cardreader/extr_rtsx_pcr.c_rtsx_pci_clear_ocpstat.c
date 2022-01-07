
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* clear_ocpstat ) (struct rtsx_pcr*) ;} ;


 int REG_OCPCTL ;
 int SD_OCP_INT_CLR ;
 int SD_OC_CLR ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;
 int stub1 (struct rtsx_pcr*) ;
 int udelay (int) ;

void rtsx_pci_clear_ocpstat(struct rtsx_pcr *pcr)
{
 if (pcr->ops->clear_ocpstat) {
  pcr->ops->clear_ocpstat(pcr);
 } else {
  u8 mask = SD_OCP_INT_CLR | SD_OC_CLR;
  u8 val = SD_OCP_INT_CLR | SD_OC_CLR;

  rtsx_pci_write_register(pcr, REG_OCPCTL, mask, val);
  udelay(100);
  rtsx_pci_write_register(pcr, REG_OCPCTL, mask, 0);
 }
}
