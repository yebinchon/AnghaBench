
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int ocp_glitch; } ;
struct rtsx_cr_option {int sd_800mA_ocp_thd; scalar_t__ ocp_en; } ;
struct rtsx_pcr {TYPE_1__ hw_param; struct rtsx_cr_option option; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* init_ocp ) (struct rtsx_pcr*) ;} ;


 int FPDCTL ;
 int OC_POWER_DOWN ;
 int REG_OCPGLITCH ;
 int REG_OCPPARA1 ;
 int REG_OCPPARA2 ;
 int SD_OCP_GLITCH_MASK ;
 int SD_OCP_THD_MASK ;
 int SD_OCP_TIME_800 ;
 int SD_OCP_TIME_MASK ;
 int rtsx_pci_enable_ocp (struct rtsx_pcr*) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;
 int stub1 (struct rtsx_pcr*) ;

void rtsx_pci_init_ocp(struct rtsx_pcr *pcr)
{
 if (pcr->ops->init_ocp) {
  pcr->ops->init_ocp(pcr);
 } else {
  struct rtsx_cr_option *option = &(pcr->option);

  if (option->ocp_en) {
   u8 val = option->sd_800mA_ocp_thd;

   rtsx_pci_write_register(pcr, FPDCTL, OC_POWER_DOWN, 0);
   rtsx_pci_write_register(pcr, REG_OCPPARA1,
    SD_OCP_TIME_MASK, SD_OCP_TIME_800);
   rtsx_pci_write_register(pcr, REG_OCPPARA2,
    SD_OCP_THD_MASK, val);
   rtsx_pci_write_register(pcr, REG_OCPGLITCH,
    SD_OCP_GLITCH_MASK, pcr->hw_param.ocp_glitch);
   rtsx_pci_enable_ocp(pcr);
  } else {

   rtsx_pci_write_register(pcr, FPDCTL, OC_POWER_DOWN,
    OC_POWER_DOWN);
  }
 }
}
