#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ssb_bus {scalar_t__ bustype; struct pci_dev* host_pci; } ;
struct pci_dev {int device; } ;
struct TYPE_6__ {int gmode; int radio_on; int type; } ;
struct b43legacy_wldev {TYPE_3__* dev; int /*<<< orphan*/  restart_work; TYPE_2__ phy; struct b43legacy_wl* wl; } ;
struct b43legacy_wl {struct b43legacy_wldev* current_dev; } ;
struct TYPE_5__ {int revision; } ;
struct TYPE_7__ {TYPE_1__ id; struct ssb_bus* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  B43legacy_PHYTYPE_B 129 
#define  B43legacy_PHYTYPE_G 128 
 int B43legacy_TMSHIGH_GPHY ; 
 int B43legacy_TMSLOW_GMODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SSB_BUSTYPE_PCI ; 
 int /*<<< orphan*/  SSB_TMSHIGH ; 
 int /*<<< orphan*/  b43legacy_chip_reset ; 
 int FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int) ; 
 int FUNC4 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43legacy_wl*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ssb_bus*) ; 
 int FUNC10 (struct ssb_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct b43legacy_wldev *dev)
{
	struct b43legacy_wl *wl = dev->wl;
	struct ssb_bus *bus = dev->dev->bus;
	struct pci_dev *pdev = (bus->bustype == SSB_BUSTYPE_PCI) ? bus->host_pci : NULL;
	int err;
	int have_bphy = 0;
	int have_gphy = 0;
	u32 tmp;

	/* Do NOT do any device initialization here.
	 * Do it in wireless_core_init() instead.
	 * This function is for gathering basic information about the HW, only.
	 * Also some structs may be set up here. But most likely you want to
	 * have that in core_init(), too.
	 */

	err = FUNC10(bus, 0);
	if (err) {
		FUNC8(wl, "Bus powerup failed\n");
		goto out;
	}
	/* Get the PHY type. */
	if (dev->dev->id.revision >= 5) {
		u32 tmshigh;

		tmshigh = FUNC12(dev->dev, SSB_TMSHIGH);
		have_gphy = !!(tmshigh & B43legacy_TMSHIGH_GPHY);
		if (!have_gphy)
			have_bphy = 1;
	} else if (dev->dev->id.revision == 4)
		have_gphy = 1;
	else
		have_bphy = 1;

	dev->phy.gmode = (have_gphy || have_bphy);
	dev->phy.radio_on = true;
	tmp = dev->phy.gmode ? B43legacy_TMSLOW_GMODE : 0;
	FUNC7(dev, tmp);

	err = FUNC2(dev);
	if (err)
		goto err_powerdown;
	/* Check if this device supports multiband. */
	if (!pdev ||
	    (pdev->device != 0x4312 &&
	     pdev->device != 0x4319 &&
	     pdev->device != 0x4324)) {
		/* No multiband support. */
		have_bphy = 0;
		have_gphy = 0;
		switch (dev->phy.type) {
		case B43legacy_PHYTYPE_B:
			have_bphy = 1;
			break;
		case B43legacy_PHYTYPE_G:
			have_gphy = 1;
			break;
		default:
			FUNC0(1);
		}
	}
	dev->phy.gmode = (have_gphy || have_bphy);
	tmp = dev->phy.gmode ? B43legacy_TMSLOW_GMODE : 0;
	FUNC7(dev, tmp);

	err = FUNC6(dev);
	if (err)
		goto err_powerdown;
	err = FUNC4(dev, have_bphy, have_gphy);
	if (err)
		goto err_powerdown;

	/* Now set some default "current_dev" */
	if (!wl->current_dev)
		wl->current_dev = dev;
	FUNC1(&dev->restart_work, b43legacy_chip_reset);

	FUNC3(dev, 1);
	FUNC5(dev, 0);
	FUNC11(dev->dev, 0);
	FUNC9(bus);

out:
	return err;

err_powerdown:
	FUNC9(bus);
	return err;
}