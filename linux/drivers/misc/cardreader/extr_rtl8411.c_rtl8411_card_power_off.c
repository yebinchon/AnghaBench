
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int BPP_LDO_POWB ;
 int BPP_LDO_SUSPEND ;
 int BPP_POWER_MASK ;
 int BPP_POWER_OFF ;
 int CARD_PWR_CTL ;
 int LDO_CTL ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int rtl8411_card_power_off(struct rtsx_pcr *pcr, int card)
{
 int err;

 err = rtsx_pci_write_register(pcr, CARD_PWR_CTL,
   BPP_POWER_MASK, BPP_POWER_OFF);
 if (err < 0)
  return err;

 return rtsx_pci_write_register(pcr, LDO_CTL,
   BPP_LDO_POWB, BPP_LDO_SUSPEND);
}
