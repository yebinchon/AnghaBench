
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ocp_en; } ;
struct rtsx_pcr {int ocp_stat; int ocp_stat2; TYPE_1__ option; } ;


 int CARD_OE ;
 int DV3318_OCP_EVER ;
 int DV3318_OCP_NOW ;
 int RTSX_SD_CARD ;
 int SD_OC_EVER ;
 int SD_OC_NOW ;
 int SD_OUTPUT_EN ;
 int rts5260_get_ocpstat2 (struct rtsx_pcr*,int*) ;
 int rtsx_pci_card_power_off (struct rtsx_pcr*,int ) ;
 int rtsx_pci_clear_ocpstat (struct rtsx_pcr*) ;
 int rtsx_pci_get_ocpstat (struct rtsx_pcr*,int*) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static void rts5260_process_ocp(struct rtsx_pcr *pcr)
{
 if (!pcr->option.ocp_en)
  return;

 rtsx_pci_get_ocpstat(pcr, &pcr->ocp_stat);
 rts5260_get_ocpstat2(pcr, &pcr->ocp_stat2);

 if ((pcr->ocp_stat & (SD_OC_NOW | SD_OC_EVER)) ||
  (pcr->ocp_stat2 & (DV3318_OCP_NOW | DV3318_OCP_EVER))) {
  rtsx_pci_card_power_off(pcr, RTSX_SD_CARD);
  rtsx_pci_write_register(pcr, CARD_OE, SD_OUTPUT_EN, 0);
  rtsx_pci_clear_ocpstat(pcr);
  pcr->ocp_stat = 0;
  pcr->ocp_stat2 = 0;
 }

}
