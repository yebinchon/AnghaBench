
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ocp_en; } ;
struct rtsx_pcr {int ocp_stat; TYPE_2__ option; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* process_ocp ) (struct rtsx_pcr*) ;} ;


 int CARD_OE ;
 int RTSX_SD_CARD ;
 int SD_OC_EVER ;
 int SD_OC_NOW ;
 int SD_OUTPUT_EN ;
 int rtsx_pci_card_power_off (struct rtsx_pcr*,int ) ;
 int rtsx_pci_clear_ocpstat (struct rtsx_pcr*) ;
 int rtsx_pci_get_ocpstat (struct rtsx_pcr*,int*) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;
 int stub1 (struct rtsx_pcr*) ;

__attribute__((used)) static void rtsx_pci_process_ocp(struct rtsx_pcr *pcr)
{
 if (pcr->ops->process_ocp) {
  pcr->ops->process_ocp(pcr);
 } else {
  if (!pcr->option.ocp_en)
   return;
  rtsx_pci_get_ocpstat(pcr, &pcr->ocp_stat);
  if (pcr->ocp_stat & (SD_OC_NOW | SD_OC_EVER)) {
   rtsx_pci_card_power_off(pcr, RTSX_SD_CARD);
   rtsx_pci_write_register(pcr, CARD_OE, SD_OUTPUT_EN, 0);
   rtsx_pci_clear_ocpstat(pcr);
   pcr->ocp_stat = 0;
  }
 }
}
