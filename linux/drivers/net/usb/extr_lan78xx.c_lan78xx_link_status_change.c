
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int speed; int autoneg; } ;
struct net_device {struct phy_device* phydev; } ;


 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int LAN88XX_INT_MASK ;
 int LAN88XX_INT_MASK_MDINTPIN_EN_ ;
 int LAN88XX_INT_STS ;
 int MII_BMCR ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static void lan78xx_link_status_change(struct net_device *net)
{
 struct phy_device *phydev = net->phydev;
 int ret, temp;






 if (!phydev->autoneg && (phydev->speed == 100)) {

  temp = phy_read(phydev, LAN88XX_INT_MASK);
  temp &= ~LAN88XX_INT_MASK_MDINTPIN_EN_;
  ret = phy_write(phydev, LAN88XX_INT_MASK, temp);

  temp = phy_read(phydev, MII_BMCR);
  temp &= ~(BMCR_SPEED100 | BMCR_SPEED1000);
  phy_write(phydev, MII_BMCR, temp);
  temp |= BMCR_SPEED100;
  phy_write(phydev, MII_BMCR, temp);


  temp = phy_read(phydev, LAN88XX_INT_STS);


  temp = phy_read(phydev, LAN88XX_INT_MASK);
  temp |= LAN88XX_INT_MASK_MDINTPIN_EN_;
  ret = phy_write(phydev, LAN88XX_INT_MASK, temp);
 }
}
