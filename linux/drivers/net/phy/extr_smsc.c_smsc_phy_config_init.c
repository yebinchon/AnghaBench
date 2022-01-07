
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc_phy_priv {scalar_t__ energy_enable; } ;
struct phy_device {struct smsc_phy_priv* priv; } ;


 int MII_LAN83C185_CTRL_STATUS ;
 int MII_LAN83C185_EDPWRDOWN ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int smsc_phy_ack_interrupt (struct phy_device*) ;

__attribute__((used)) static int smsc_phy_config_init(struct phy_device *phydev)
{
 struct smsc_phy_priv *priv = phydev->priv;

 int rc = phy_read(phydev, MII_LAN83C185_CTRL_STATUS);

 if (rc < 0)
  return rc;

 if (priv->energy_enable) {

  rc = phy_write(phydev, MII_LAN83C185_CTRL_STATUS,
          rc | MII_LAN83C185_EDPWRDOWN);
  if (rc < 0)
   return rc;
 }

 return smsc_phy_ack_interrupt(phydev);
}
