
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int FPDCTL ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;

__attribute__((used)) static void rts5209_force_power_down(struct rtsx_pcr *pcr, u8 pm_state)
{
 rtsx_pci_write_register(pcr, FPDCTL, 0x07, 0x07);
}
