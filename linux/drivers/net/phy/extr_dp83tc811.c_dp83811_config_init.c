
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 int DP83811_DEVADDR ;
 int DP83811_SGMII_EN ;
 int DP83811_WOL_EN ;
 int DP83811_WOL_MAGIC_EN ;
 int DP83811_WOL_SECURE_ON ;
 int MII_DP83811_SGMII_CTRL ;
 int MII_DP83811_WOL_CFG ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int dp83811_config_init(struct phy_device *phydev)
{
 int value, err;

 value = phy_read(phydev, MII_DP83811_SGMII_CTRL);
 if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {
  err = phy_write(phydev, MII_DP83811_SGMII_CTRL,
     (DP83811_SGMII_EN | value));
 } else {
  err = phy_write(phydev, MII_DP83811_SGMII_CTRL,
    (~DP83811_SGMII_EN & value));
 }

 if (err < 0)

  return err;

 value = DP83811_WOL_MAGIC_EN | DP83811_WOL_SECURE_ON | DP83811_WOL_EN;

 return phy_write_mmd(phydev, DP83811_DEVADDR, MII_DP83811_WOL_CFG,
       value);
}
