
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct fixed_phy_status {int link; int duplex; int speed; } ;
struct bgmac {int dev; int net_dev; } ;


 int DUPLEX_FULL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PHY_INTERFACE_MODE_MII ;
 int PHY_POLL ;
 int SPEED_1000 ;
 int bgmac_adjust_link ;
 int dev_err (int ,char*) ;
 struct phy_device* fixed_phy_register (int ,struct fixed_phy_status*,int *) ;
 int phy_connect_direct (int ,struct phy_device*,int ,int ) ;

int bgmac_phy_connect_direct(struct bgmac *bgmac)
{
 struct fixed_phy_status fphy_status = {
  .link = 1,
  .speed = SPEED_1000,
  .duplex = DUPLEX_FULL,
 };
 struct phy_device *phy_dev;
 int err;

 phy_dev = fixed_phy_register(PHY_POLL, &fphy_status, ((void*)0));
 if (!phy_dev || IS_ERR(phy_dev)) {
  dev_err(bgmac->dev, "Failed to register fixed PHY device\n");
  return -ENODEV;
 }

 err = phy_connect_direct(bgmac->net_dev, phy_dev, bgmac_adjust_link,
     PHY_INTERFACE_MODE_MII);
 if (err) {
  dev_err(bgmac->dev, "Connecting PHY failed\n");
  return err;
 }

 return err;
}
