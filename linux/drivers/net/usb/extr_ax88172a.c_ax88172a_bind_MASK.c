#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct usbnet {int rx_urb_size; TYPE_1__* driver_info; TYPE_2__* net; struct ax88172a_private* driver_priv; } ;
struct usb_interface {int dummy; } ;
struct ax88172a_private {int use_embdphy; int /*<<< orphan*/  phy_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_READ_NODE_ID ; 
 int /*<<< orphan*/  AX_CMD_SW_PHY_STATUS ; 
#define  AX_PHY_SELECT_EXTERNAL 129 
#define  AX_PHY_SELECT_INTERNAL 128 
 int AX_PHY_SELECT_MASK ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int ETH_ALEN ; 
 int FLAG_FRAMING_AX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int) ; 
 int /*<<< orphan*/  ax88172a_ethtool_ops ; 
 int FUNC2 (struct usbnet*) ; 
 int /*<<< orphan*/  ax88172a_netdev_ops ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ax88172a_private*) ; 
 struct ax88172a_private* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct usbnet*,struct usb_interface*) ; 

__attribute__((used)) static int FUNC10(struct usbnet *dev, struct usb_interface *intf)
{
	int ret;
	u8 buf[ETH_ALEN];
	struct ax88172a_private *priv;

	FUNC9(dev, intf);

	priv = FUNC5(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	dev->driver_priv = priv;

	/* Get the MAC address */
	ret = FUNC0(dev, AX_CMD_READ_NODE_ID, 0, 0, ETH_ALEN, buf, 0);
	if (ret < 0) {
		FUNC8(dev->net, "Failed to read MAC address: %d\n", ret);
		goto free;
	}
	FUNC6(dev->net->dev_addr, buf, ETH_ALEN);

	dev->net->netdev_ops = &ax88172a_netdev_ops;
	dev->net->ethtool_ops = &ax88172a_ethtool_ops;

	/* are we using the internal or the external phy? */
	ret = FUNC0(dev, AX_CMD_SW_PHY_STATUS, 0, 0, 1, buf, 0);
	if (ret < 0) {
		FUNC8(dev->net, "Failed to read software interface selection register: %d\n",
			   ret);
		goto free;
	}

	FUNC7(dev->net, "AX_CMD_SW_PHY_STATUS = 0x%02x\n", buf[0]);
	switch (buf[0] & AX_PHY_SELECT_MASK) {
	case AX_PHY_SELECT_INTERNAL:
		FUNC7(dev->net, "use internal phy\n");
		priv->use_embdphy = 1;
		break;
	case AX_PHY_SELECT_EXTERNAL:
		FUNC7(dev->net, "use external phy\n");
		priv->use_embdphy = 0;
		break;
	default:
		FUNC8(dev->net, "Interface mode not supported by driver\n");
		ret = -ENOTSUPP;
		goto free;
	}

	priv->phy_addr = FUNC1(dev, priv->use_embdphy);
	FUNC3(dev, priv->use_embdphy);

	/* Asix framing packs multiple eth frames into a 2K usb bulk transfer */
	if (dev->driver_info->flags & FLAG_FRAMING_AX) {
		/* hard_mtu  is still the default - the device does not support
		   jumbo eth frames */
		dev->rx_urb_size = 2048;
	}

	/* init MDIO bus */
	ret = FUNC2(dev);
	if (ret)
		goto free;

	return 0;

free:
	FUNC4(priv);
	return ret;
}