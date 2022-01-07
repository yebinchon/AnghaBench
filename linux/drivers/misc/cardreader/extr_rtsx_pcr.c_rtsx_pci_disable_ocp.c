
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable_ocp ) (struct rtsx_pcr*) ;} ;


 int FPDCTL ;
 int OC_POWER_DOWN ;
 int REG_OCPCTL ;
 int SD_DETECT_EN ;
 int SD_OCP_INT_EN ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;
 int stub1 (struct rtsx_pcr*) ;

void rtsx_pci_disable_ocp(struct rtsx_pcr *pcr)
{
 u8 mask = SD_OCP_INT_EN | SD_DETECT_EN;

 if (pcr->ops->disable_ocp) {
  pcr->ops->disable_ocp(pcr);
 } else {
  rtsx_pci_write_register(pcr, REG_OCPCTL, mask, 0);
  rtsx_pci_write_register(pcr, FPDCTL, OC_POWER_DOWN,
    OC_POWER_DOWN);
 }
}
