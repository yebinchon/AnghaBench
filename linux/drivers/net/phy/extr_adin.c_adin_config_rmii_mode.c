
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {scalar_t__ interface; } ;


 int ADIN1300_GE_RMII_CFG_REG ;
 int ADIN1300_GE_RMII_EN ;
 int ADIN1300_GE_RMII_FIFO_DEPTH_MSK ;
 int ADIN1300_GE_RMII_FIFO_DEPTH_SEL (int ) ;
 int ADIN1300_RMII_8_BITS ;
 int MDIO_MMD_VEND1 ;
 scalar_t__ PHY_INTERFACE_MODE_RMII ;
 int adin_get_reg_value (struct phy_device*,char*,int ,int ) ;
 int adin_rmii_fifo_depths ;
 int phy_clear_bits_mmd (struct phy_device*,int ,int ,int) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int adin_config_rmii_mode(struct phy_device *phydev)
{
 u32 val;
 int reg;

 if (phydev->interface != PHY_INTERFACE_MODE_RMII)
  return phy_clear_bits_mmd(phydev, MDIO_MMD_VEND1,
       ADIN1300_GE_RMII_CFG_REG,
       ADIN1300_GE_RMII_EN);

 reg = phy_read_mmd(phydev, MDIO_MMD_VEND1, ADIN1300_GE_RMII_CFG_REG);
 if (reg < 0)
  return reg;

 reg |= ADIN1300_GE_RMII_EN;

 val = adin_get_reg_value(phydev, "adi,fifo-depth-bits",
     adin_rmii_fifo_depths,
     ADIN1300_RMII_8_BITS);

 reg &= ~ADIN1300_GE_RMII_FIFO_DEPTH_MSK;
 reg |= ADIN1300_GE_RMII_FIFO_DEPTH_SEL(val);

 return phy_write_mmd(phydev, MDIO_MMD_VEND1,
        ADIN1300_GE_RMII_CFG_REG, reg);
}
