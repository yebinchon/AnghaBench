
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int LDO_VCC_3V3 ;
 int LDO_VCC_CFG1 ;
 int LDO_VCC_TUNE_MASK ;
 int rtsx_base_card_power_on (struct rtsx_pcr*,int) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int rts525a_card_power_on(struct rtsx_pcr *pcr, int card)
{
 rtsx_pci_write_register(pcr, LDO_VCC_CFG1,
  LDO_VCC_TUNE_MASK, LDO_VCC_3V3);
 return rtsx_base_card_power_on(pcr, card);
}
