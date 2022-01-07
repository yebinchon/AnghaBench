
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int GPIO_CTL ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;

__attribute__((used)) static int rts5227_turn_off_led(struct rtsx_pcr *pcr)
{
 return rtsx_pci_write_register(pcr, GPIO_CTL, 0x02, 0x00);
}
