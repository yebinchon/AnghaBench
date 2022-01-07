
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int autoneg; } ;


 int AUTONEG_DISABLE ;
 int BMCR_ANENABLE ;
 int MII_BMCR ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int dp83848_config_init(struct phy_device *phydev)
{
 int val;




 val = phy_read(phydev, MII_BMCR);
 if (!(val & BMCR_ANENABLE))
  phydev->autoneg = AUTONEG_DISABLE;

 return 0;
}
