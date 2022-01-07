
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {struct net_device* dev; } ;
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;


 int MII_LAN83C185_CTRL_STATUS ;
 int MII_LAN83C185_EDPWRDOWN ;
 int SMSC_WARN (struct smsc911x_data*,int ,char*) ;
 int drv ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int smsc911x_phy_enable_energy_detect(struct smsc911x_data *pdata)
{
 struct net_device *ndev = pdata->dev;
 struct phy_device *phy_dev = ndev->phydev;
 int rc = 0;

 if (!phy_dev)
  return rc;

 rc = phy_read(phy_dev, MII_LAN83C185_CTRL_STATUS);

 if (rc < 0) {
  SMSC_WARN(pdata, drv, "Failed reading PHY control reg");
  return rc;
 }


 if (!(rc & MII_LAN83C185_EDPWRDOWN)) {

  rc = phy_write(phy_dev, MII_LAN83C185_CTRL_STATUS,
          rc | MII_LAN83C185_EDPWRDOWN);

  if (rc < 0) {
   SMSC_WARN(pdata, drv, "Failed writing PHY control reg");
   return rc;
  }
 }
 return 0;
}
