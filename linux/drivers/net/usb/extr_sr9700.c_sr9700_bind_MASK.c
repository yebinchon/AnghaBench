#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mii_if_info {int phy_id_mask; int reg_num_mask; int /*<<< orphan*/  phy_id; int /*<<< orphan*/  (* mdio_write ) (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  mdio_read; struct net_device* dev; } ;
struct usbnet {int rx_urb_size; struct mii_if_info mii; scalar_t__ hard_mtu; struct net_device* net; } ;
struct usb_interface {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; scalar_t__ hard_header_len; scalar_t__ mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int ADVERTISE_ALL ; 
 int ADVERTISE_CSMA ; 
 int ADVERTISE_PAUSE_CAP ; 
 int BMCR_RESET ; 
 int ENODEV ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  NCR_RST ; 
 int /*<<< orphan*/  PRR_PHY_RST ; 
 int /*<<< orphan*/  SR_NCR ; 
 int /*<<< orphan*/  SR_PAR ; 
 int /*<<< orphan*/  SR_PRR ; 
 scalar_t__ SR_TX_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct mii_if_info*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  sr9700_ethtool_ops ; 
 int /*<<< orphan*/  sr9700_netdev_ops ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  sr_mdio_read ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct usbnet*,struct usb_interface*) ; 

__attribute__((used)) static int FUNC9(struct usbnet *dev, struct usb_interface *intf)
{
	struct net_device *netdev;
	struct mii_if_info *mii;
	int ret;

	ret = FUNC8(dev, intf);
	if (ret)
		goto out;

	netdev = dev->net;

	netdev->netdev_ops = &sr9700_netdev_ops;
	netdev->ethtool_ops = &sr9700_ethtool_ops;
	netdev->hard_header_len += SR_TX_OVERHEAD;
	dev->hard_mtu = netdev->mtu + netdev->hard_header_len;
	/* bulkin buffer is preferably not less than 3K */
	dev->rx_urb_size = 3072;

	mii = &dev->mii;
	mii->dev = netdev;
	mii->mdio_read = sr_mdio_read;
	mii->mdio_write = sr_mdio_write;
	mii->phy_id_mask = 0x1f;
	mii->reg_num_mask = 0x1f;

	FUNC6(dev, SR_NCR, NCR_RST);
	FUNC7(20);

	/* read MAC
	 * After Chip Power on, the Chip will reload the MAC from
	 * EEPROM automatically to PAR. In case there is no EEPROM externally,
	 * a default MAC address is stored in PAR for making chip work properly.
	 */
	if (FUNC5(dev, SR_PAR, ETH_ALEN, netdev->dev_addr) < 0) {
		FUNC2(netdev, "Error reading MAC address\n");
		ret = -ENODEV;
		goto out;
	}

	/* power up and reset phy */
	FUNC6(dev, SR_PRR, PRR_PHY_RST);
	/* at least 10ms, here 20ms for safe */
	FUNC1(20);
	FUNC6(dev, SR_PRR, 0);
	/* at least 1ms, here 2ms for reading right register */
	FUNC7(2 * 1000);

	/* receive broadcast packets */
	FUNC3(netdev);

	FUNC4(netdev, mii->phy_id, MII_BMCR, BMCR_RESET);
	FUNC4(netdev, mii->phy_id, MII_ADVERTISE, ADVERTISE_ALL |
		      ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP);
	FUNC0(mii);

out:
	return ret;
}