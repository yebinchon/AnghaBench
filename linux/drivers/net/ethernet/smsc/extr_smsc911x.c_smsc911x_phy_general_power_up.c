
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {struct net_device* dev; } ;
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int SMSC_WARN (struct smsc911x_data*,int ,char*) ;
 int drv ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int smsc911x_phy_general_power_up(struct smsc911x_data *pdata)
{
 struct net_device *ndev = pdata->dev;
 struct phy_device *phy_dev = ndev->phydev;
 int rc = 0;

 if (!phy_dev)
  return rc;
 rc = phy_read(phy_dev, MII_BMCR);
 if (rc < 0) {
  SMSC_WARN(pdata, drv, "Failed reading PHY control reg");
  return rc;
 }




 if (rc & BMCR_PDOWN) {
  rc = phy_write(phy_dev, MII_BMCR, rc & ~BMCR_PDOWN);
  if (rc < 0) {
   SMSC_WARN(pdata, drv, "Failed writing PHY control reg");
   return rc;
  }

  usleep_range(1000, 1500);
 }

 return 0;
}
