
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct b43_phy {int do_full_init; int gmode; int type; TYPE_2__* ops; } ;
struct b43_wldev {struct b43_phy phy; int restart_work; TYPE_1__* dev; struct b43_wl* wl; } ;
struct b43_wl {struct b43_wldev* current_dev; } ;
struct TYPE_4__ {int (* switch_analog ) (struct b43_wldev*,int ) ;} ;
struct TYPE_3__ {int bus_type; int core_rev; int sdev; int bdev; } ;


 int B43_BCMA_IOST_2G_PHY ;
 int B43_BCMA_IOST_5G_PHY ;





 int B43_TMSHIGH_HAVE_2GHZ_PHY ;
 int B43_TMSHIGH_HAVE_5GHZ_PHY ;
 int B43_WARN_ON (int) ;
 int BCMA_IOST ;
 int EOPNOTSUPP ;
 int INIT_WORK (int *,int ) ;
 int SSB_TMSHIGH ;
 int b43_bus_may_powerdown (struct b43_wldev*) ;
 int b43_bus_powerup (struct b43_wldev*,int ) ;
 int b43_chip_reset ;
 int b43_device_disable (struct b43_wldev*,int ) ;
 int b43_phy_allocate (struct b43_wldev*) ;
 int b43_phy_free (struct b43_wldev*) ;
 int b43_phy_versioning (struct b43_wldev*) ;
 int b43_setup_bands (struct b43_wldev*,int,int) ;
 int b43_supported_bands (struct b43_wldev*,int*,int*) ;
 int b43_validate_chipaccess (struct b43_wldev*) ;
 int b43_wireless_core_reset (struct b43_wldev*,int) ;
 int b43err (struct b43_wl*,char*) ;
 int b43warn (struct b43_wl*,char*) ;
 int bcma_aread32 (int ,int ) ;
 int ssb_read32 (int ,int ) ;
 int stub1 (struct b43_wldev*,int ) ;

__attribute__((used)) static int b43_wireless_core_attach(struct b43_wldev *dev)
{
 struct b43_wl *wl = dev->wl;
 struct b43_phy *phy = &dev->phy;
 int err;
 u32 tmp;
 bool have_2ghz_phy = 0, have_5ghz_phy = 0;
 err = b43_bus_powerup(dev, 0);
 if (err) {
  b43err(wl, "Bus powerup failed\n");
  goto out;
 }

 phy->do_full_init = 1;


 switch (dev->dev->bus_type) {
 }

 dev->phy.gmode = have_2ghz_phy;
 b43_wireless_core_reset(dev, dev->phy.gmode);


 err = b43_phy_versioning(dev);
 if (err)
  goto err_powerdown;


 b43_supported_bands(dev, &have_2ghz_phy, &have_5ghz_phy);


 if (have_5ghz_phy) {
  switch (dev->phy.type) {
  case 130:
  case 128:
  case 129:
   b43warn(wl, "5 GHz band is unsupported on this PHY\n");
   have_5ghz_phy = 0;
  }
 }

 if (!have_2ghz_phy && !have_5ghz_phy) {
  b43err(wl, "b43 can't support any band on this device\n");
  err = -EOPNOTSUPP;
  goto err_powerdown;
 }

 err = b43_phy_allocate(dev);
 if (err)
  goto err_powerdown;

 dev->phy.gmode = have_2ghz_phy;
 b43_wireless_core_reset(dev, dev->phy.gmode);

 err = b43_validate_chipaccess(dev);
 if (err)
  goto err_phy_free;
 err = b43_setup_bands(dev, have_2ghz_phy, have_5ghz_phy);
 if (err)
  goto err_phy_free;


 if (!wl->current_dev)
  wl->current_dev = dev;
 INIT_WORK(&dev->restart_work, b43_chip_reset);

 dev->phy.ops->switch_analog(dev, 0);
 b43_device_disable(dev, 0);
 b43_bus_may_powerdown(dev);

out:
 return err;

err_phy_free:
 b43_phy_free(dev);
err_powerdown:
 b43_bus_may_powerdown(dev);
 return err;
}
