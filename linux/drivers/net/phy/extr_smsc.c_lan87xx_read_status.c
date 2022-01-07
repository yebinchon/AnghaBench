
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc_phy_priv {scalar_t__ energy_enable; } ;
struct phy_device {int link; struct smsc_phy_priv* priv; } ;


 int MII_LAN83C185_CTRL_STATUS ;
 int MII_LAN83C185_EDPWRDOWN ;
 int MII_LAN83C185_ENERGYON ;
 int genphy_read_status (struct phy_device*) ;
 int msleep (int) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int lan87xx_read_status(struct phy_device *phydev)
{
 struct smsc_phy_priv *priv = phydev->priv;

 int err = genphy_read_status(phydev);

 if (!phydev->link && priv->energy_enable) {
  int i;


  int rc = phy_read(phydev, MII_LAN83C185_CTRL_STATUS);
  if (rc < 0)
   return rc;

  rc = phy_write(phydev, MII_LAN83C185_CTRL_STATUS,
          rc & ~MII_LAN83C185_EDPWRDOWN);
  if (rc < 0)
   return rc;


  for (i = 0; i < 64; i++) {

   msleep(10);
   rc = phy_read(phydev, MII_LAN83C185_CTRL_STATUS);
   if (rc < 0)
    return rc;
   if (rc & MII_LAN83C185_ENERGYON)
    break;
  }


  rc = phy_read(phydev, MII_LAN83C185_CTRL_STATUS);
  if (rc < 0)
   return rc;

  rc = phy_write(phydev, MII_LAN83C185_CTRL_STATUS,
          rc | MII_LAN83C185_EDPWRDOWN);
  if (rc < 0)
   return rc;
 }

 return err;
}
