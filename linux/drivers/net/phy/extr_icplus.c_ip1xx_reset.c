
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int ip1xx_reset(struct phy_device *phydev)
{
 int bmcr;


 bmcr = phy_read(phydev, MII_BMCR);
 if (bmcr < 0)
  return bmcr;
 bmcr |= BMCR_RESET;
 bmcr = phy_write(phydev, MII_BMCR, bmcr);
 if (bmcr < 0)
  return bmcr;

 do {
  bmcr = phy_read(phydev, MII_BMCR);
  if (bmcr < 0)
   return bmcr;
 } while (bmcr & BMCR_RESET);

 return 0;
}
