
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_SPEED100 ;
 int MDIO_EEE_100TX ;
 int MII_BCM7XXX_AN_EEE_EN ;
 int MII_BCM7XXX_AN_NULL_MSG_EN ;
 int MII_BCM7XXX_EEE_THRESH_DEF ;
 int MII_BCM7XXX_PCS_CTRL_2_DEF ;
 int MII_BCM7XXX_SHD_2_ADDR_CTRL ;
 int MII_BCM7XXX_SHD_2_CTRL_STAT ;
 int MII_BCM7XXX_SHD_3_AN_EEE_ADV ;
 int MII_BCM7XXX_SHD_3_AN_STAT ;
 int MII_BCM7XXX_SHD_3_EEE_THRESH ;
 int MII_BCM7XXX_SHD_3_PCS_CTRL_2 ;
 int MII_BCM7XXX_SHD_MODE_2 ;
 int MII_BCM7XXX_TEST ;
 int MII_BMCR ;
 int phy_set_clr_bits (struct phy_device*,int ,int ,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm7xxx_28nm_ephy_eee_enable(struct phy_device *phydev)
{
 int ret;


 ret = phy_set_clr_bits(phydev, MII_BCM7XXX_TEST,
          MII_BCM7XXX_SHD_MODE_2, 0);
 if (ret < 0)
  return ret;


 ret = phy_write(phydev, MII_BCM7XXX_SHD_2_ADDR_CTRL,
   MII_BCM7XXX_SHD_3_AN_EEE_ADV);
 if (ret < 0)
  goto reset_shadow_mode;
 ret = phy_write(phydev, MII_BCM7XXX_SHD_2_CTRL_STAT,
   MDIO_EEE_100TX);
 if (ret < 0)
  goto reset_shadow_mode;


 ret = phy_write(phydev, MII_BCM7XXX_SHD_2_ADDR_CTRL,
   MII_BCM7XXX_SHD_3_PCS_CTRL_2);
 if (ret < 0)
  goto reset_shadow_mode;
 ret = phy_write(phydev, MII_BCM7XXX_SHD_2_CTRL_STAT,
   MII_BCM7XXX_PCS_CTRL_2_DEF);
 if (ret < 0)
  goto reset_shadow_mode;

 ret = phy_write(phydev, MII_BCM7XXX_SHD_2_ADDR_CTRL,
   MII_BCM7XXX_SHD_3_EEE_THRESH);
 if (ret < 0)
  goto reset_shadow_mode;
 ret = phy_write(phydev, MII_BCM7XXX_SHD_2_CTRL_STAT,
   MII_BCM7XXX_EEE_THRESH_DEF);
 if (ret < 0)
  goto reset_shadow_mode;


 ret = phy_write(phydev, MII_BCM7XXX_SHD_2_ADDR_CTRL,
   MII_BCM7XXX_SHD_3_AN_STAT);
 if (ret < 0)
  goto reset_shadow_mode;
 ret = phy_write(phydev, MII_BCM7XXX_SHD_2_CTRL_STAT,
   (MII_BCM7XXX_AN_NULL_MSG_EN | MII_BCM7XXX_AN_EEE_EN));
 if (ret < 0)
  goto reset_shadow_mode;

reset_shadow_mode:

 ret = phy_set_clr_bits(phydev, MII_BCM7XXX_TEST, 0,
          MII_BCM7XXX_SHD_MODE_2);
 if (ret < 0)
  return ret;


 phy_write(phydev, MII_BMCR,
    (BMCR_SPEED100 | BMCR_ANENABLE | BMCR_ANRESTART));

 return 0;
}
