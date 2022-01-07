
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int CARD_GPIO ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;

__attribute__((used)) static int rtl8411_turn_off_led(struct rtsx_pcr *pcr)
{
 return rtsx_pci_write_register(pcr, CARD_GPIO, 0x01, 0x01);
}
