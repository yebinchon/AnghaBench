
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int LED_SHINE_EN ;
 int LED_SHINE_MASK ;
 int OLT_LED_CTL ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int rtsx_base_enable_auto_blink(struct rtsx_pcr *pcr)
{
 return rtsx_pci_write_register(pcr, OLT_LED_CTL,
  LED_SHINE_MASK, LED_SHINE_EN);
}
