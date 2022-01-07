
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_M1011_PHY_STATUS ;
 int MII_M1011_PHY_STATUS_RESOLVED ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int marvell_aneg_done(struct phy_device *phydev)
{
 int retval = phy_read(phydev, MII_M1011_PHY_STATUS);

 return (retval < 0) ? retval : (retval & MII_M1011_PHY_STATUS_RESOLVED);
}
