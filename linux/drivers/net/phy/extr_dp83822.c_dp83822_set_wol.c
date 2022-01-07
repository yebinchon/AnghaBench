
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct phy_device {struct net_device* attached_dev; } ;
struct net_device {scalar_t__ dev_addr; } ;
struct ethtool_wolinfo {int wolopts; int* sopass; } ;


 int DP83822_DEVADDR ;
 int DP83822_WOL_CLR_INDICATION ;
 int DP83822_WOL_EN ;
 int DP83822_WOL_INDICATION_SEL ;
 int DP83822_WOL_MAGIC_EN ;
 int DP83822_WOL_SECURE_ON ;
 int EINVAL ;
 int MII_DP83822_RXSOP1 ;
 int MII_DP83822_RXSOP2 ;
 int MII_DP83822_RXSOP3 ;
 int MII_DP83822_WOL_CFG ;
 int MII_DP83822_WOL_DA1 ;
 int MII_DP83822_WOL_DA2 ;
 int MII_DP83822_WOL_DA3 ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int is_valid_ether_addr (int const*) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int const) ;

__attribute__((used)) static int dp83822_set_wol(struct phy_device *phydev,
      struct ethtool_wolinfo *wol)
{
 struct net_device *ndev = phydev->attached_dev;
 u16 value;
 const u8 *mac;

 if (wol->wolopts & (WAKE_MAGIC | WAKE_MAGICSECURE)) {
  mac = (const u8 *)ndev->dev_addr;

  if (!is_valid_ether_addr(mac))
   return -EINVAL;




  phy_write_mmd(phydev, DP83822_DEVADDR, MII_DP83822_WOL_DA1,
         (mac[1] << 8) | mac[0]);
  phy_write_mmd(phydev, DP83822_DEVADDR, MII_DP83822_WOL_DA2,
         (mac[3] << 8) | mac[2]);
  phy_write_mmd(phydev, DP83822_DEVADDR, MII_DP83822_WOL_DA3,
         (mac[5] << 8) | mac[4]);

  value = phy_read_mmd(phydev, DP83822_DEVADDR,
         MII_DP83822_WOL_CFG);
  if (wol->wolopts & WAKE_MAGIC)
   value |= DP83822_WOL_MAGIC_EN;
  else
   value &= ~DP83822_WOL_MAGIC_EN;

  if (wol->wolopts & WAKE_MAGICSECURE) {
   phy_write_mmd(phydev, DP83822_DEVADDR,
          MII_DP83822_RXSOP1,
          (wol->sopass[1] << 8) | wol->sopass[0]);
   phy_write_mmd(phydev, DP83822_DEVADDR,
          MII_DP83822_RXSOP2,
          (wol->sopass[3] << 8) | wol->sopass[2]);
   phy_write_mmd(phydev, DP83822_DEVADDR,
          MII_DP83822_RXSOP3,
          (wol->sopass[5] << 8) | wol->sopass[4]);
   value |= DP83822_WOL_SECURE_ON;
  } else {
   value &= ~DP83822_WOL_SECURE_ON;
  }

  value |= (DP83822_WOL_EN | DP83822_WOL_INDICATION_SEL |
     DP83822_WOL_CLR_INDICATION);
  phy_write_mmd(phydev, DP83822_DEVADDR, MII_DP83822_WOL_CFG,
         value);
 } else {
  value = phy_read_mmd(phydev, DP83822_DEVADDR,
         MII_DP83822_WOL_CFG);
  value &= ~DP83822_WOL_EN;
  phy_write_mmd(phydev, DP83822_DEVADDR, MII_DP83822_WOL_CFG,
         value);
 }

 return 0;
}
