
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int CARD_AUTO_BLINK ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;

__attribute__((used)) static int rtl8411_disable_auto_blink(struct rtsx_pcr *pcr)
{
 return rtsx_pci_write_register(pcr, CARD_AUTO_BLINK, 0x08, 0x00);
}
