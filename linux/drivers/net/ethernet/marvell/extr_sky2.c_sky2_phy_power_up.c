
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_hw {scalar_t__ chip_id; scalar_t__ chip_rev; int flags; } ;


 int B2_TST_CTRL1 ;
 scalar_t__ CHIP_ID_YUKON_FE ;
 scalar_t__ CHIP_ID_YUKON_XL ;
 scalar_t__ CHIP_REV_YU_XL_A1 ;
 int GPC_RST_CLR ;
 int GPHY_CTRL ;
 int PCI_DEV_REG1 ;
 int PHY_CT_ANE ;
 int PHY_MARV_CTRL ;
 int SKY2_HW_ADV_POWER_CTL ;
 int SK_REG (unsigned int,int ) ;
 int TST_CFG_WRITE_OFF ;
 int TST_CFG_WRITE_ON ;
 int * coma_mode ;
 int gm_phy_write (struct sky2_hw*,unsigned int,int ,int ) ;
 int * phy_power ;
 int sky2_pci_read32 (struct sky2_hw*,int ) ;
 int sky2_pci_write32 (struct sky2_hw*,int ,int ) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_phy_power_up(struct sky2_hw *hw, unsigned port)
{
 u32 reg1;

 sky2_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
 reg1 = sky2_pci_read32(hw, PCI_DEV_REG1);
 reg1 &= ~phy_power[port];

 if (hw->chip_id == CHIP_ID_YUKON_XL && hw->chip_rev > CHIP_REV_YU_XL_A1)
  reg1 |= coma_mode[port];

 sky2_pci_write32(hw, PCI_DEV_REG1, reg1);
 sky2_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);
 sky2_pci_read32(hw, PCI_DEV_REG1);

 if (hw->chip_id == CHIP_ID_YUKON_FE)
  gm_phy_write(hw, port, PHY_MARV_CTRL, PHY_CT_ANE);
 else if (hw->flags & SKY2_HW_ADV_POWER_CTL)
  sky2_write8(hw, SK_REG(port, GPHY_CTRL), GPC_RST_CLR);
}
