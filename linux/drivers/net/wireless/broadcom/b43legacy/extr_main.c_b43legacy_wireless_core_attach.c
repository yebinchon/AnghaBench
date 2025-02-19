
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct ssb_bus {scalar_t__ bustype; struct pci_dev* host_pci; } ;
struct pci_dev {int device; } ;
struct TYPE_6__ {int gmode; int radio_on; int type; } ;
struct b43legacy_wldev {TYPE_3__* dev; int restart_work; TYPE_2__ phy; struct b43legacy_wl* wl; } ;
struct b43legacy_wl {struct b43legacy_wldev* current_dev; } ;
struct TYPE_5__ {int revision; } ;
struct TYPE_7__ {TYPE_1__ id; struct ssb_bus* bus; } ;


 int B43legacy_BUG_ON (int) ;


 int B43legacy_TMSHIGH_GPHY ;
 int B43legacy_TMSLOW_GMODE ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ SSB_BUSTYPE_PCI ;
 int SSB_TMSHIGH ;
 int b43legacy_chip_reset ;
 int b43legacy_phy_versioning (struct b43legacy_wldev*) ;
 int b43legacy_radio_turn_off (struct b43legacy_wldev*,int) ;
 int b43legacy_setup_modes (struct b43legacy_wldev*,int,int) ;
 int b43legacy_switch_analog (struct b43legacy_wldev*,int ) ;
 int b43legacy_validate_chipaccess (struct b43legacy_wldev*) ;
 int b43legacy_wireless_core_reset (struct b43legacy_wldev*,int) ;
 int b43legacyerr (struct b43legacy_wl*,char*) ;
 int ssb_bus_may_powerdown (struct ssb_bus*) ;
 int ssb_bus_powerup (struct ssb_bus*,int ) ;
 int ssb_device_disable (TYPE_3__*,int ) ;
 int ssb_read32 (TYPE_3__*,int ) ;

__attribute__((used)) static int b43legacy_wireless_core_attach(struct b43legacy_wldev *dev)
{
 struct b43legacy_wl *wl = dev->wl;
 struct ssb_bus *bus = dev->dev->bus;
 struct pci_dev *pdev = (bus->bustype == SSB_BUSTYPE_PCI) ? bus->host_pci : ((void*)0);
 int err;
 int have_bphy = 0;
 int have_gphy = 0;
 u32 tmp;
 err = ssb_bus_powerup(bus, 0);
 if (err) {
  b43legacyerr(wl, "Bus powerup failed\n");
  goto out;
 }

 if (dev->dev->id.revision >= 5) {
  u32 tmshigh;

  tmshigh = ssb_read32(dev->dev, SSB_TMSHIGH);
  have_gphy = !!(tmshigh & B43legacy_TMSHIGH_GPHY);
  if (!have_gphy)
   have_bphy = 1;
 } else if (dev->dev->id.revision == 4)
  have_gphy = 1;
 else
  have_bphy = 1;

 dev->phy.gmode = (have_gphy || have_bphy);
 dev->phy.radio_on = 1;
 tmp = dev->phy.gmode ? B43legacy_TMSLOW_GMODE : 0;
 b43legacy_wireless_core_reset(dev, tmp);

 err = b43legacy_phy_versioning(dev);
 if (err)
  goto err_powerdown;

 if (!pdev ||
     (pdev->device != 0x4312 &&
      pdev->device != 0x4319 &&
      pdev->device != 0x4324)) {

  have_bphy = 0;
  have_gphy = 0;
  switch (dev->phy.type) {
  case 129:
   have_bphy = 1;
   break;
  case 128:
   have_gphy = 1;
   break;
  default:
   B43legacy_BUG_ON(1);
  }
 }
 dev->phy.gmode = (have_gphy || have_bphy);
 tmp = dev->phy.gmode ? B43legacy_TMSLOW_GMODE : 0;
 b43legacy_wireless_core_reset(dev, tmp);

 err = b43legacy_validate_chipaccess(dev);
 if (err)
  goto err_powerdown;
 err = b43legacy_setup_modes(dev, have_bphy, have_gphy);
 if (err)
  goto err_powerdown;


 if (!wl->current_dev)
  wl->current_dev = dev;
 INIT_WORK(&dev->restart_work, b43legacy_chip_reset);

 b43legacy_radio_turn_off(dev, 1);
 b43legacy_switch_analog(dev, 0);
 ssb_device_disable(dev->dev, 0);
 ssb_bus_may_powerdown(bus);

out:
 return err;

err_powerdown:
 ssb_bus_may_powerdown(bus);
 return err;
}
