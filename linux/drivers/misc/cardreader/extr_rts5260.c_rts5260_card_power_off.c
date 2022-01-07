
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ocp_en; } ;
struct rtsx_pcr {TYPE_1__ option; } ;


 int DV331812_POWEROFF ;
 int DV331812_POWERON ;
 int LDO_CONFIG2 ;
 int LDO_POW_SDVDD1_MASK ;
 int LDO_POW_SDVDD1_OFF ;
 int LDO_VCC_CFG1 ;
 int rts5260_card_before_power_off (struct rtsx_pcr*) ;
 int rtsx_pci_disable_ocp (struct rtsx_pcr*) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int rts5260_card_power_off(struct rtsx_pcr *pcr, int card)
{
 int err = 0;

 rts5260_card_before_power_off(pcr);
 err = rtsx_pci_write_register(pcr, LDO_VCC_CFG1,
    LDO_POW_SDVDD1_MASK, LDO_POW_SDVDD1_OFF);
 err = rtsx_pci_write_register(pcr, LDO_CONFIG2,
    DV331812_POWERON, DV331812_POWEROFF);
 if (pcr->option.ocp_en)
  rtsx_pci_disable_ocp(pcr);

 return err;
}
