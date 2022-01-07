
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MDIO_MMD_PCS ;
 int PHY_ARDENNES_MMD_DEV_3_PHY_CFG ;
 int PHY_ARDENNES_MMD_DEV_3_PHY_CFG_ZD_DLY_EN_ ;
 int lan88xx_config_TR_regs (struct phy_device*) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int lan88xx_config_init(struct phy_device *phydev)
{
 int val;


 val = phy_read_mmd(phydev, MDIO_MMD_PCS,
      PHY_ARDENNES_MMD_DEV_3_PHY_CFG);
 val |= PHY_ARDENNES_MMD_DEV_3_PHY_CFG_ZD_DLY_EN_;

 phy_write_mmd(phydev, MDIO_MMD_PCS, PHY_ARDENNES_MMD_DEV_3_PHY_CFG,
        val);


 lan88xx_config_TR_regs(phydev);

 return 0;
}
