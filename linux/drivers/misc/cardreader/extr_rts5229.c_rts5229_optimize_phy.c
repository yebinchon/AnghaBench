
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int rtsx_pci_write_phy_register (struct rtsx_pcr*,int,int) ;

__attribute__((used)) static int rts5229_optimize_phy(struct rtsx_pcr *pcr)
{

 return rtsx_pci_write_phy_register(pcr, 0x00, 0xBA42);
}
