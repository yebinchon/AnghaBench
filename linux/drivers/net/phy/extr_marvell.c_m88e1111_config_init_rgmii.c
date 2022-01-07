
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_M1111_HWCFG_FIBER_COPPER_RES ;
 int MII_M1111_HWCFG_MODE_COPPER_RGMII ;
 int MII_M1111_HWCFG_MODE_FIBER_RGMII ;
 int MII_M1111_HWCFG_MODE_MASK ;
 int MII_M1111_PHY_EXT_SR ;
 int m88e1111_config_init_rgmii_delays (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int m88e1111_config_init_rgmii(struct phy_device *phydev)
{
 int temp;
 int err;

 err = m88e1111_config_init_rgmii_delays(phydev);
 if (err < 0)
  return err;

 temp = phy_read(phydev, MII_M1111_PHY_EXT_SR);
 if (temp < 0)
  return temp;

 temp &= ~(MII_M1111_HWCFG_MODE_MASK);

 if (temp & MII_M1111_HWCFG_FIBER_COPPER_RES)
  temp |= MII_M1111_HWCFG_MODE_FIBER_RGMII;
 else
  temp |= MII_M1111_HWCFG_MODE_COPPER_RGMII;

 return phy_write(phydev, MII_M1111_PHY_EXT_SR, temp);
}
