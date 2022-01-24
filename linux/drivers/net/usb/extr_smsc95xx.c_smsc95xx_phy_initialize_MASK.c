#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* mdio_read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int phy_id_mask; int reg_num_mask; int /*<<< orphan*/  phy_id; int /*<<< orphan*/  (* mdio_write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  dev; } ;
struct usbnet {int /*<<< orphan*/  net; TYPE_1__ mii; } ;

/* Variables and functions */
 int ADVERTISE_ALL ; 
 int ADVERTISE_CSMA ; 
 int ADVERTISE_PAUSE_ASYM ; 
 int ADVERTISE_PAUSE_CAP ; 
 int BMCR_RESET ; 
 int EIO ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  PHY_INT_MASK ; 
 int PHY_INT_MASK_DEFAULT_ ; 
 int /*<<< orphan*/  PHY_INT_SRC ; 
 int /*<<< orphan*/  SMSC95XX_INTERNAL_PHY_ID ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev)
{
	int bmcr, ret, timeout = 0;

	/* Initialize MII structure */
	dev->mii.dev = dev->net;
	dev->mii.mdio_read = smsc95xx_mdio_read;
	dev->mii.mdio_write = smsc95xx_mdio_write;
	dev->mii.phy_id_mask = 0x1f;
	dev->mii.reg_num_mask = 0x1f;
	dev->mii.phy_id = SMSC95XX_INTERNAL_PHY_ID;

	/* reset phy and wait for reset to complete */
	FUNC5(dev->net, dev->mii.phy_id, MII_BMCR, BMCR_RESET);

	do {
		FUNC1(10);
		bmcr = FUNC4(dev->net, dev->mii.phy_id, MII_BMCR);
		timeout++;
	} while ((bmcr & BMCR_RESET) && (timeout < 100));

	if (timeout >= 100) {
		FUNC2(dev->net, "timeout on PHY Reset");
		return -EIO;
	}

	FUNC5(dev->net, dev->mii.phy_id, MII_ADVERTISE,
		ADVERTISE_ALL | ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP |
		ADVERTISE_PAUSE_ASYM);

	/* read to clear */
	ret = FUNC4(dev->net, dev->mii.phy_id, PHY_INT_SRC);
	if (ret < 0) {
		FUNC2(dev->net, "Failed to read PHY_INT_SRC during init\n");
		return ret;
	}

	FUNC5(dev->net, dev->mii.phy_id, PHY_INT_MASK,
		PHY_INT_MASK_DEFAULT_);
	FUNC0(&dev->mii);

	FUNC3(dev, ifup, dev->net, "phy initialised successfully\n");
	return 0;
}