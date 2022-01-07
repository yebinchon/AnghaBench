
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; int* sopass; } ;


 int DP83811_DEVADDR ;
 int DP83811_WOL_EN ;
 int DP83811_WOL_MAGIC_EN ;
 int DP83811_WOL_SECURE_ON ;
 int MII_DP83811_RXSOP1 ;
 int MII_DP83811_RXSOP2 ;
 int MII_DP83811_RXSOP3 ;
 int MII_DP83811_WOL_CFG ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

__attribute__((used)) static void dp83811_get_wol(struct phy_device *phydev,
       struct ethtool_wolinfo *wol)
{
 u16 sopass_val;
 int value;

 wol->supported = (WAKE_MAGIC | WAKE_MAGICSECURE);
 wol->wolopts = 0;

 value = phy_read_mmd(phydev, DP83811_DEVADDR, MII_DP83811_WOL_CFG);

 if (value & DP83811_WOL_MAGIC_EN)
  wol->wolopts |= WAKE_MAGIC;

 if (value & DP83811_WOL_SECURE_ON) {
  sopass_val = phy_read_mmd(phydev, DP83811_DEVADDR,
       MII_DP83811_RXSOP1);
  wol->sopass[0] = (sopass_val & 0xff);
  wol->sopass[1] = (sopass_val >> 8);

  sopass_val = phy_read_mmd(phydev, DP83811_DEVADDR,
       MII_DP83811_RXSOP2);
  wol->sopass[2] = (sopass_val & 0xff);
  wol->sopass[3] = (sopass_val >> 8);

  sopass_val = phy_read_mmd(phydev, DP83811_DEVADDR,
       MII_DP83811_RXSOP3);
  wol->sopass[4] = (sopass_val & 0xff);
  wol->sopass[5] = (sopass_val >> 8);

  wol->wolopts |= WAKE_MAGICSECURE;
 }


 if (!(value & DP83811_WOL_EN))
  wol->wolopts = 0;
}
