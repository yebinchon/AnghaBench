#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {TYPE_2__* net; struct ax88172a_private* driver_priv; int /*<<< orphan*/  data; } ;
struct ax88172a_private {int phy_name; int /*<<< orphan*/  phydev; int /*<<< orphan*/  phy_addr; TYPE_1__* mdio; int /*<<< orphan*/  use_embdphy; } ;
struct asix_data {int /*<<< orphan*/ * mac_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int AX88772_IPG0_DEFAULT ; 
 int AX88772_IPG1_DEFAULT ; 
 int /*<<< orphan*/  AX88772_IPG2_DEFAULT ; 
 int /*<<< orphan*/  AX_CMD_WRITE_IPG0 ; 
 int /*<<< orphan*/  AX_CMD_WRITE_NODE_ID ; 
 int AX_DEFAULT_RX_CTL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* PHY_ID_FMT ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usbnet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ax88172a_adjust_link ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct usbnet *dev)
{
	struct asix_data *data = (struct asix_data *)&dev->data;
	struct ax88172a_private *priv = dev->driver_priv;
	int ret;
	u16 rx_ctl;

	FUNC6(dev, priv->use_embdphy);

	FUNC9(150);
	rx_ctl = FUNC3(dev, 0);
	FUNC10(dev->net, "RX_CTL is 0x%04x after software reset\n", rx_ctl);
	ret = FUNC5(dev, 0x0000, 0);
	if (ret < 0)
		goto out;

	rx_ctl = FUNC3(dev, 0);
	FUNC10(dev->net, "RX_CTL is 0x%04x setting to 0x0000\n", rx_ctl);

	FUNC9(150);

	ret = FUNC4(dev, AX_CMD_WRITE_IPG0,
			     AX88772_IPG0_DEFAULT | AX88772_IPG1_DEFAULT,
			     AX88772_IPG2_DEFAULT, 0, NULL, 0);
	if (ret < 0) {
		FUNC11(dev->net, "Write IPG,IPG1,IPG2 failed: %d\n", ret);
		goto out;
	}

	/* Rewrite MAC address */
	FUNC8(data->mac_addr, dev->net->dev_addr, ETH_ALEN);
	ret = FUNC4(dev, AX_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
			     data->mac_addr, 0);
	if (ret < 0)
		goto out;

	/* Set RX_CTL to default values with 2k buffer, and enable cactus */
	ret = FUNC5(dev, AX_DEFAULT_RX_CTL, 0);
	if (ret < 0)
		goto out;

	rx_ctl = FUNC3(dev, 0);
	FUNC10(dev->net, "RX_CTL is 0x%04x after all initializations\n",
		   rx_ctl);

	rx_ctl = FUNC2(dev, 0);
	FUNC10(dev->net, "Medium Status is 0x%04x after all initializations\n",
		   rx_ctl);

	/* Connect to PHY */
	FUNC15(priv->phy_name, 20, PHY_ID_FMT,
		 priv->mdio->id, priv->phy_addr);

	priv->phydev = FUNC13(dev->net, priv->phy_name,
				   &ax88172a_adjust_link,
				   PHY_INTERFACE_MODE_MII);
	if (FUNC0(priv->phydev)) {
		FUNC11(dev->net, "Could not connect to PHY device %s\n",
			   priv->phy_name);
		ret = FUNC1(priv->phydev);
		goto out;
	}

	FUNC12(dev->net, "Connected to phy %s\n", priv->phy_name);

	/* During power-up, the AX88172A set the power down (BMCR_PDOWN)
	 * bit of the PHY. Bring the PHY up again.
	 */
	FUNC7(priv->phydev);
	FUNC14(priv->phydev);

	return 0;

out:
	return ret;

}