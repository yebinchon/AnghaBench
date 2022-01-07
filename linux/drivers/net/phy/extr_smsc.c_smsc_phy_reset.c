
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_LAN83C185_MODE_ALL ;
 int MII_LAN83C185_MODE_MASK ;
 int MII_LAN83C185_MODE_POWERDOWN ;
 int MII_LAN83C185_SPECIAL_MODES ;
 int genphy_soft_reset (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int smsc_phy_reset(struct phy_device *phydev)
{
 int rc = phy_read(phydev, MII_LAN83C185_SPECIAL_MODES);
 if (rc < 0)
  return rc;




 if ((rc & MII_LAN83C185_MODE_MASK) == MII_LAN83C185_MODE_POWERDOWN) {

  rc |= MII_LAN83C185_MODE_ALL;
  phy_write(phydev, MII_LAN83C185_SPECIAL_MODES, rc);
 }


 return genphy_soft_reset(phydev);
}
