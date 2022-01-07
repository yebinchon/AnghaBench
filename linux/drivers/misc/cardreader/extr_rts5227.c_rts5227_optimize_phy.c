
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int D3_DELINK_MODE_EN ;
 int PM_CTRL3 ;
 int rtsx_pci_write_phy_register (struct rtsx_pcr*,int,int) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int) ;

__attribute__((used)) static int rts5227_optimize_phy(struct rtsx_pcr *pcr)
{
 int err;

 err = rtsx_pci_write_register(pcr, PM_CTRL3, D3_DELINK_MODE_EN, 0x00);
 if (err < 0)
  return err;


 return rtsx_pci_write_phy_register(pcr, 0x00, 0xBA42);
}
