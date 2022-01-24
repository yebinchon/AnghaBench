#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_5__ {int phy_id; } ;
struct usbnet {TYPE_2__* net; TYPE_1__ mii; int /*<<< orphan*/  data; } ;
struct asix_data {int /*<<< orphan*/ * mac_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX88772A_PHY14H ; 
 int AX88772A_PHY14H_DEFAULT ; 
 int /*<<< orphan*/  AX88772A_PHY15H ; 
 int AX88772A_PHY15H_DEFAULT ; 
 int /*<<< orphan*/  AX88772A_PHY16H ; 
 int AX88772A_PHY16H_DEFAULT ; 
 int AX88772_IPG0_DEFAULT ; 
 int AX88772_IPG1_DEFAULT ; 
 int AX88772_IPG2_DEFAULT ; 
 int /*<<< orphan*/  AX88772_MEDIUM_DEFAULT ; 
 int AX_AX88772A_CHIPCODE ; 
 int AX_AX88772B_CHIPCODE ; 
 int AX_CHIPCODE_MASK ; 
 int /*<<< orphan*/  AX_CMD_STATMNGSTS_REG ; 
 int /*<<< orphan*/  AX_CMD_SW_PHY_SELECT ; 
 int /*<<< orphan*/  AX_CMD_WRITE_IPG0 ; 
 int /*<<< orphan*/  AX_CMD_WRITE_NODE_ID ; 
 int /*<<< orphan*/  AX_DEFAULT_RX_CTL ; 
 int /*<<< orphan*/  AX_GPIO_RSE ; 
 int AX_PHYSEL_SSEN ; 
 int /*<<< orphan*/  AX_QCTCTRL ; 
 int AX_SWRESET_CLEAR ; 
 int AX_SWRESET_IPPD ; 
 int AX_SWRESET_IPRL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MII_PHYSID1 ; 
 int FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC3 (struct usbnet*,int) ; 
 int FUNC4 (struct usbnet*,int) ; 
 int FUNC5 (struct usbnet*,int,int) ; 
 int FUNC6 (struct usbnet*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct usbnet*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct usbnet *dev, int in_pm)
{
	struct asix_data *data = (struct asix_data *)&dev->data;
	int ret, embd_phy;
	u16 rx_ctl, phy14h, phy15h, phy16h;
	u8 chipcode = 0;

	ret = FUNC7(dev, AX_GPIO_RSE, 5, in_pm);
	if (ret < 0)
		goto out;

	embd_phy = ((dev->mii.phy_id & 0x1f) == 0x10 ? 1 : 0);

	ret = FUNC6(dev, AX_CMD_SW_PHY_SELECT, embd_phy |
			     AX_PHYSEL_SSEN, 0, 0, NULL, in_pm);
	if (ret < 0) {
		FUNC12(dev->net, "Select PHY #1 failed: %d\n", ret);
		goto out;
	}
	FUNC13(10000, 11000);

	ret = FUNC5(dev, AX_SWRESET_IPPD | AX_SWRESET_IPRL, in_pm);
	if (ret < 0)
		goto out;

	FUNC13(10000, 11000);

	ret = FUNC5(dev, AX_SWRESET_IPRL, in_pm);
	if (ret < 0)
		goto out;

	FUNC11(160);

	ret = FUNC5(dev, AX_SWRESET_CLEAR, in_pm);
	if (ret < 0)
		goto out;

	ret = FUNC5(dev, AX_SWRESET_IPRL, in_pm);
	if (ret < 0)
		goto out;

	FUNC11(200);

	if (in_pm && (!FUNC0(dev->net, dev->mii.phy_id,
					   MII_PHYSID1))) {
		ret = -1;
		goto out;
	}

	ret = FUNC2(dev, AX_CMD_STATMNGSTS_REG, 0,
			    0, 1, &chipcode, in_pm);
	if (ret < 0)
		goto out;

	if ((chipcode & AX_CHIPCODE_MASK) == AX_AX88772B_CHIPCODE) {
		ret = FUNC6(dev, AX_QCTCTRL, 0x8000, 0x8001,
				     0, NULL, in_pm);
		if (ret < 0) {
			FUNC12(dev->net, "Write BQ setting failed: %d\n",
				   ret);
			goto out;
		}
	} else if ((chipcode & AX_CHIPCODE_MASK) == AX_AX88772A_CHIPCODE) {
		/* Check if the PHY registers have default settings */
		phy14h = FUNC0(dev->net, dev->mii.phy_id,
					     AX88772A_PHY14H);
		phy15h = FUNC0(dev->net, dev->mii.phy_id,
					     AX88772A_PHY15H);
		phy16h = FUNC0(dev->net, dev->mii.phy_id,
					     AX88772A_PHY16H);

		FUNC12(dev->net,
			   "772a_hw_reset: MR20=0x%x MR21=0x%x MR22=0x%x\n",
			   phy14h, phy15h, phy16h);

		/* Restore PHY registers default setting if not */
		if (phy14h != AX88772A_PHY14H_DEFAULT)
			FUNC1(dev->net, dev->mii.phy_id,
					     AX88772A_PHY14H,
					     AX88772A_PHY14H_DEFAULT);
		if (phy15h != AX88772A_PHY15H_DEFAULT)
			FUNC1(dev->net, dev->mii.phy_id,
					     AX88772A_PHY15H,
					     AX88772A_PHY15H_DEFAULT);
		if (phy16h != AX88772A_PHY16H_DEFAULT)
			FUNC1(dev->net, dev->mii.phy_id,
					     AX88772A_PHY16H,
					     AX88772A_PHY16H_DEFAULT);
	}

	ret = FUNC6(dev, AX_CMD_WRITE_IPG0,
				AX88772_IPG0_DEFAULT | AX88772_IPG1_DEFAULT,
				AX88772_IPG2_DEFAULT, 0, NULL, in_pm);
	if (ret < 0) {
		FUNC12(dev->net, "Write IPG,IPG1,IPG2 failed: %d\n", ret);
		goto out;
	}

	/* Rewrite MAC address */
	FUNC10(data->mac_addr, dev->net->dev_addr, ETH_ALEN);
	ret = FUNC6(dev, AX_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
							data->mac_addr, in_pm);
	if (ret < 0)
		goto out;

	/* Set RX_CTL to default values with 2k buffer, and enable cactus */
	ret = FUNC9(dev, AX_DEFAULT_RX_CTL, in_pm);
	if (ret < 0)
		goto out;

	ret = FUNC8(dev, AX88772_MEDIUM_DEFAULT, in_pm);
	if (ret < 0)
		return ret;

	/* Set RX_CTL to default values with 2k buffer, and enable cactus */
	ret = FUNC9(dev, AX_DEFAULT_RX_CTL, in_pm);
	if (ret < 0)
		goto out;

	rx_ctl = FUNC4(dev, in_pm);
	FUNC12(dev->net, "RX_CTL is 0x%04x after all initializations\n",
		   rx_ctl);

	rx_ctl = FUNC3(dev, in_pm);
	FUNC12(dev->net,
		   "Medium Status is 0x%04x after all initializations\n",
		   rx_ctl);

	return 0;

out:
	return ret;
}