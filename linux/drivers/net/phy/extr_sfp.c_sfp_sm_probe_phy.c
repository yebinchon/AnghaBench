
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {struct phy_device* mod_phy; int dev; int sfp_bus; int i2c_mii; } ;
struct phy_device {int dummy; } ;


 int ENODEV ;
 struct phy_device* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PTR_ERR (struct phy_device*) ;
 int SFP_PHY_ADDR ;
 int T_PHY_RESET_MS ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 struct phy_device* mdiobus_scan (int ,int ) ;
 int msleep (int ) ;
 int phy_device_free (struct phy_device*) ;
 int phy_device_remove (struct phy_device*) ;
 int phy_start (struct phy_device*) ;
 int sfp_add_phy (int ,struct phy_device*) ;

__attribute__((used)) static void sfp_sm_probe_phy(struct sfp *sfp)
{
 struct phy_device *phy;
 int err;

 msleep(T_PHY_RESET_MS);

 phy = mdiobus_scan(sfp->i2c_mii, SFP_PHY_ADDR);
 if (phy == ERR_PTR(-ENODEV)) {
  dev_info(sfp->dev, "no PHY detected\n");
  return;
 }
 if (IS_ERR(phy)) {
  dev_err(sfp->dev, "mdiobus scan returned %ld\n", PTR_ERR(phy));
  return;
 }

 err = sfp_add_phy(sfp->sfp_bus, phy);
 if (err) {
  phy_device_remove(phy);
  phy_device_free(phy);
  dev_err(sfp->dev, "sfp_add_phy failed: %d\n", err);
  return;
 }

 sfp->mod_phy = phy;
 phy_start(phy);
}
