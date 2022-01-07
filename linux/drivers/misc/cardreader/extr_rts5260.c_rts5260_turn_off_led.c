
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int RTS5260_REG_GPIO_CTL0 ;
 int RTS5260_REG_GPIO_MASK ;
 int RTS5260_REG_GPIO_OFF ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int rts5260_turn_off_led(struct rtsx_pcr *pcr)
{
 return rtsx_pci_write_register(pcr, RTS5260_REG_GPIO_CTL0,
  RTS5260_REG_GPIO_MASK, RTS5260_REG_GPIO_OFF);
}
