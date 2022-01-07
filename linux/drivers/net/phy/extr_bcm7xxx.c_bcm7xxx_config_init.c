
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_BCM7XXX_100TX_DISC ;
 int MII_BCM7XXX_100TX_FALSE_CAR ;
 int MII_BCM7XXX_64CLK_MDIO ;
 int MII_BCM7XXX_AUX_MODE ;
 int MII_BCM7XXX_SHD_MODE_2 ;
 int MII_BCM7XXX_TEST ;
 int phy_read (struct phy_device*,int ) ;
 int phy_set_clr_bits (struct phy_device*,int ,int ,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int bcm7xxx_config_init(struct phy_device *phydev)
{
 int ret;


 phy_write(phydev, MII_BCM7XXX_AUX_MODE, MII_BCM7XXX_64CLK_MDIO);
 phy_read(phydev, MII_BCM7XXX_AUX_MODE);


 ret = phy_set_clr_bits(phydev, MII_BCM7XXX_TEST,
   MII_BCM7XXX_SHD_MODE_2, MII_BCM7XXX_SHD_MODE_2);
 if (ret < 0)
  return ret;


 phy_write(phydev, MII_BCM7XXX_100TX_DISC, 0x0F00);
 udelay(10);


 phy_write(phydev, MII_BCM7XXX_100TX_DISC, 0x0C00);

 phy_write(phydev, MII_BCM7XXX_100TX_FALSE_CAR, 0x7555);


 ret = phy_set_clr_bits(phydev, MII_BCM7XXX_TEST, 0, MII_BCM7XXX_SHD_MODE_2);
 if (ret < 0)
  return ret;

 return 0;
}
