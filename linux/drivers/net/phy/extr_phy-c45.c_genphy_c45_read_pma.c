
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int duplex; int speed; int lp_advertising; } ;


 int DUPLEX_FULL ;
 int MDIO_CTRL1 ;



 int MDIO_CTRL1_SPEEDSEL ;
 int MDIO_MMD_PMAPMD ;


 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_2500 ;
 int SPEED_5000 ;
 int SPEED_UNKNOWN ;
 int linkmode_zero (int ) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

int genphy_c45_read_pma(struct phy_device *phydev)
{
 int val;

 linkmode_zero(phydev->lp_advertising);

 val = phy_read_mmd(phydev, MDIO_MMD_PMAPMD, MDIO_CTRL1);
 if (val < 0)
  return val;

 switch (val & MDIO_CTRL1_SPEEDSEL) {
 case 0:
  phydev->speed = SPEED_10;
  break;
 case 129:
  phydev->speed = SPEED_100;
  break;
 case 128:
  phydev->speed = SPEED_1000;
  break;
 case 131:
  phydev->speed = SPEED_2500;
  break;
 case 130:
  phydev->speed = SPEED_5000;
  break;
 case 132:
  phydev->speed = SPEED_10000;
  break;
 default:
  phydev->speed = SPEED_UNKNOWN;
  break;
 }

 phydev->duplex = DUPLEX_FULL;

 return 0;
}
