
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ duplex; int speed; } ;


 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 int MDIO_CTRL1 ;
 int MDIO_CTRL1_SPEED10G ;
 int MDIO_CTRL1_SPEED2_5G ;
 int MDIO_CTRL1_SPEED5G ;
 int MDIO_CTRL1_SPEEDSEL ;
 int MDIO_CTRL2 ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_CTRL1_SPEED100 ;
 int MDIO_PMA_CTRL1_SPEED1000 ;
 int MDIO_PMA_CTRL2_1000BT ;
 int MDIO_PMA_CTRL2_100BTX ;
 int MDIO_PMA_CTRL2_10BT ;
 int MDIO_PMA_CTRL2_10GBT ;
 int MDIO_PMA_CTRL2_2_5GBT ;
 int MDIO_PMA_CTRL2_5GBT ;
 int MDIO_PMA_CTRL2_TYPE ;






 int genphy_c45_an_disable_aneg (struct phy_device*) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

int genphy_c45_pma_setup_forced(struct phy_device *phydev)
{
 int ctrl1, ctrl2, ret;


 if (phydev->duplex != DUPLEX_FULL)
  return -EINVAL;

 ctrl1 = phy_read_mmd(phydev, MDIO_MMD_PMAPMD, MDIO_CTRL1);
 if (ctrl1 < 0)
  return ctrl1;

 ctrl2 = phy_read_mmd(phydev, MDIO_MMD_PMAPMD, MDIO_CTRL2);
 if (ctrl2 < 0)
  return ctrl2;

 ctrl1 &= ~MDIO_CTRL1_SPEEDSEL;




 ctrl2 &= ~(MDIO_PMA_CTRL2_TYPE | 0x30);

 switch (phydev->speed) {
 case 133:
  ctrl2 |= MDIO_PMA_CTRL2_10BT;
  break;
 case 132:
  ctrl1 |= MDIO_PMA_CTRL1_SPEED100;
  ctrl2 |= MDIO_PMA_CTRL2_100BTX;
  break;
 case 131:
  ctrl1 |= MDIO_PMA_CTRL1_SPEED1000;

  ctrl2 |= MDIO_PMA_CTRL2_1000BT;
  break;
 case 129:
  ctrl1 |= MDIO_CTRL1_SPEED2_5G;

  ctrl2 |= MDIO_PMA_CTRL2_2_5GBT;
  break;
 case 128:
  ctrl1 |= MDIO_CTRL1_SPEED5G;

  ctrl2 |= MDIO_PMA_CTRL2_5GBT;
  break;
 case 130:
  ctrl1 |= MDIO_CTRL1_SPEED10G;

  ctrl2 |= MDIO_PMA_CTRL2_10GBT;
  break;
 default:
  return -EINVAL;
 }

 ret = phy_write_mmd(phydev, MDIO_MMD_PMAPMD, MDIO_CTRL1, ctrl1);
 if (ret < 0)
  return ret;

 ret = phy_write_mmd(phydev, MDIO_MMD_PMAPMD, MDIO_CTRL2, ctrl2);
 if (ret < 0)
  return ret;

 return genphy_c45_an_disable_aneg(phydev);
}
