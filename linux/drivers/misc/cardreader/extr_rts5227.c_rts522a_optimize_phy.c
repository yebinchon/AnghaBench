
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int D3_DELINK_MODE_EN ;
 int IC_VER_A ;
 int PHY_FLD0 ;
 int PHY_FLD0_INIT_27S ;
 int PHY_FLD3 ;
 int PHY_FLD3_INIT_27S ;
 int PHY_FLD4 ;
 int PHY_FLD4_INIT_27S ;
 int PHY_RCR1 ;
 int PHY_RCR1_INIT_27S ;
 int PHY_RCR2 ;
 int PHY_RCR2_INIT_27S ;
 int RTS522A_PM_CTRL3 ;
 scalar_t__ is_version (struct rtsx_pcr*,int,int ) ;
 int rtsx_pci_write_phy_register (struct rtsx_pcr*,int ,int ) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int) ;

__attribute__((used)) static int rts522a_optimize_phy(struct rtsx_pcr *pcr)
{
 int err;

 err = rtsx_pci_write_register(pcr, RTS522A_PM_CTRL3, D3_DELINK_MODE_EN,
  0x00);
 if (err < 0)
  return err;

 if (is_version(pcr, 0x522A, IC_VER_A)) {
  err = rtsx_pci_write_phy_register(pcr, PHY_RCR2,
   PHY_RCR2_INIT_27S);
  if (err)
   return err;

  rtsx_pci_write_phy_register(pcr, PHY_RCR1, PHY_RCR1_INIT_27S);
  rtsx_pci_write_phy_register(pcr, PHY_FLD0, PHY_FLD0_INIT_27S);
  rtsx_pci_write_phy_register(pcr, PHY_FLD3, PHY_FLD3_INIT_27S);
  rtsx_pci_write_phy_register(pcr, PHY_FLD4, PHY_FLD4_INIT_27S);
 }

 return 0;
}
