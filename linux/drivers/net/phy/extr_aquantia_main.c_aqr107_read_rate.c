
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int duplex; int speed; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int FIELD_GET (int ,int) ;
 int MDIO_AN_TX_VEND_STATUS1 ;






 int MDIO_AN_TX_VEND_STATUS1_FULL_DUPLEX ;
 int MDIO_AN_TX_VEND_STATUS1_RATE_MASK ;
 int MDIO_MMD_AN ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_2500 ;
 int SPEED_5000 ;
 int SPEED_UNKNOWN ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

__attribute__((used)) static int aqr107_read_rate(struct phy_device *phydev)
{
 int val;

 val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_TX_VEND_STATUS1);
 if (val < 0)
  return val;

 switch (FIELD_GET(MDIO_AN_TX_VEND_STATUS1_RATE_MASK, val)) {
 case 131:
  phydev->speed = SPEED_10;
  break;
 case 132:
  phydev->speed = SPEED_100;
  break;
 case 133:
  phydev->speed = SPEED_1000;
  break;
 case 129:
  phydev->speed = SPEED_2500;
  break;
 case 128:
  phydev->speed = SPEED_5000;
  break;
 case 130:
  phydev->speed = SPEED_10000;
  break;
 default:
  phydev->speed = SPEED_UNKNOWN;
  break;
 }

 if (val & MDIO_AN_TX_VEND_STATUS1_FULL_DUPLEX)
  phydev->duplex = DUPLEX_FULL;
 else
  phydev->duplex = DUPLEX_HALF;

 return 0;
}
