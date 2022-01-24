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
typedef  int u16 ;
struct TYPE_4__ {int phy_id; } ;
struct usbnet {TYPE_2__* net; TYPE_1__ mii; int /*<<< orphan*/  data; } ;
struct asix_data {int /*<<< orphan*/ * mac_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int AX88772_IPG0_DEFAULT ; 
 int AX88772_IPG1_DEFAULT ; 
 int /*<<< orphan*/  AX88772_IPG2_DEFAULT ; 
 int /*<<< orphan*/  AX88772_MEDIUM_DEFAULT ; 
 int /*<<< orphan*/  AX_CMD_SW_PHY_SELECT ; 
 int /*<<< orphan*/  AX_CMD_WRITE_IPG0 ; 
 int /*<<< orphan*/  AX_CMD_WRITE_NODE_ID ; 
 int /*<<< orphan*/  AX_DEFAULT_RX_CTL ; 
 int AX_GPIO_GPO2EN ; 
 int AX_GPIO_GPO_2 ; 
 int AX_GPIO_RSE ; 
 int AX_SWRESET_CLEAR ; 
 int AX_SWRESET_IPPD ; 
 int AX_SWRESET_IPRL ; 
 int AX_SWRESET_PRL ; 
 int EIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MII_PHYSID1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usbnet*,int) ; 
 int FUNC2 (struct usbnet*,int) ; 
 int FUNC3 (struct usbnet*,int,int) ; 
 int FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct usbnet*,int,int,int) ; 
 int FUNC6 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static int FUNC12(struct usbnet *dev, int in_pm)
{
	struct asix_data *data = (struct asix_data *)&dev->data;
	int ret, embd_phy;
	u16 rx_ctl;

	ret = FUNC5(dev, AX_GPIO_RSE | AX_GPIO_GPO_2 |
			      AX_GPIO_GPO2EN, 5, in_pm);
	if (ret < 0)
		goto out;

	embd_phy = ((dev->mii.phy_id & 0x1f) == 0x10 ? 1 : 0);

	ret = FUNC4(dev, AX_CMD_SW_PHY_SELECT, embd_phy,
			     0, 0, NULL, in_pm);
	if (ret < 0) {
		FUNC10(dev->net, "Select PHY #1 failed: %d\n", ret);
		goto out;
	}

	if (embd_phy) {
		ret = FUNC3(dev, AX_SWRESET_IPPD, in_pm);
		if (ret < 0)
			goto out;

		FUNC11(10000, 11000);

		ret = FUNC3(dev, AX_SWRESET_CLEAR, in_pm);
		if (ret < 0)
			goto out;

		FUNC9(60);

		ret = FUNC3(dev, AX_SWRESET_IPRL | AX_SWRESET_PRL,
				    in_pm);
		if (ret < 0)
			goto out;
	} else {
		ret = FUNC3(dev, AX_SWRESET_IPPD | AX_SWRESET_PRL,
				    in_pm);
		if (ret < 0)
			goto out;
	}

	FUNC9(150);

	if (in_pm && (!FUNC0(dev->net, dev->mii.phy_id,
					   MII_PHYSID1))){
		ret = -EIO;
		goto out;
	}

	ret = FUNC7(dev, AX_DEFAULT_RX_CTL, in_pm);
	if (ret < 0)
		goto out;

	ret = FUNC6(dev, AX88772_MEDIUM_DEFAULT, in_pm);
	if (ret < 0)
		goto out;

	ret = FUNC4(dev, AX_CMD_WRITE_IPG0,
			     AX88772_IPG0_DEFAULT | AX88772_IPG1_DEFAULT,
			     AX88772_IPG2_DEFAULT, 0, NULL, in_pm);
	if (ret < 0) {
		FUNC10(dev->net, "Write IPG,IPG1,IPG2 failed: %d\n", ret);
		goto out;
	}

	/* Rewrite MAC address */
	FUNC8(data->mac_addr, dev->net->dev_addr);
	ret = FUNC4(dev, AX_CMD_WRITE_NODE_ID, 0, 0,
			     ETH_ALEN, data->mac_addr, in_pm);
	if (ret < 0)
		goto out;

	/* Set RX_CTL to default values with 2k buffer, and enable cactus */
	ret = FUNC7(dev, AX_DEFAULT_RX_CTL, in_pm);
	if (ret < 0)
		goto out;

	rx_ctl = FUNC2(dev, in_pm);
	FUNC10(dev->net, "RX_CTL is 0x%04x after all initializations\n",
		   rx_ctl);

	rx_ctl = FUNC1(dev, in_pm);
	FUNC10(dev->net,
		   "Medium Status is 0x%04x after all initializations\n",
		   rx_ctl);

	return 0;

out:
	return ret;
}