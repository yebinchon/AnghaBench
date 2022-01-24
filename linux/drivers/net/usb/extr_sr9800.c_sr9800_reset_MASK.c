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
typedef  int u16 ;
struct usbnet {TYPE_1__* net; int /*<<< orphan*/  data; } ;
struct sr_data {int /*<<< orphan*/ * mac_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  SR_CMD_SW_PHY_SELECT ; 
 int /*<<< orphan*/  SR_CMD_WRITE_NODE_ID ; 
 int SR_GPIO_GPO2EN ; 
 int SR_GPIO_GPO_2 ; 
 int SR_GPIO_RSE ; 
 int SR_SWRESET_CLEAR ; 
 int SR_SWRESET_IPPD ; 
 int SR_SWRESET_IPRL ; 
 int SR_SWRESET_PRL ; 
 int SR_SWRESET_PRTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int FUNC3 (struct usbnet*) ; 
 int FUNC4 (struct usbnet*) ; 
 int FUNC5 (struct usbnet*) ; 
 int FUNC6 (struct usbnet*,int) ; 
 int FUNC7 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct usbnet*,int,int) ; 
 int FUNC9 (struct usbnet*,int) ; 

__attribute__((used)) static int FUNC10(struct usbnet *dev)
{
	struct sr_data *data = (struct sr_data *)&dev->data;
	int ret, embd_phy;
	u16 rx_ctl;

	ret = FUNC8(dev,
			SR_GPIO_RSE | SR_GPIO_GPO_2 | SR_GPIO_GPO2EN, 5);
	if (ret < 0)
		goto out;

	embd_phy = ((FUNC4(dev) & 0x1f) == 0x10 ? 1 : 0);

	ret = FUNC7(dev, SR_CMD_SW_PHY_SELECT, embd_phy, 0, 0, NULL);
	if (ret < 0) {
		FUNC2(dev->net, "Select PHY #1 failed: %d\n", ret);
		goto out;
	}

	ret = FUNC6(dev, SR_SWRESET_IPPD | SR_SWRESET_PRL);
	if (ret < 0)
		goto out;

	FUNC1(150);

	ret = FUNC6(dev, SR_SWRESET_CLEAR);
	if (ret < 0)
		goto out;

	FUNC1(150);

	if (embd_phy) {
		ret = FUNC6(dev, SR_SWRESET_IPRL);
		if (ret < 0)
			goto out;
	} else {
		ret = FUNC6(dev, SR_SWRESET_PRTE);
		if (ret < 0)
			goto out;
	}

	FUNC1(150);
	rx_ctl = FUNC5(dev);
	FUNC2(dev->net, "RX_CTL is 0x%04x after software reset\n", rx_ctl);
	ret = FUNC9(dev, 0x0000);
	if (ret < 0)
		goto out;

	rx_ctl = FUNC5(dev);
	FUNC2(dev->net, "RX_CTL is 0x%04x setting to 0x0000\n", rx_ctl);

	ret = FUNC6(dev, SR_SWRESET_PRL);
	if (ret < 0)
		goto out;

	FUNC1(150);

	ret = FUNC6(dev, SR_SWRESET_IPRL | SR_SWRESET_PRL);
	if (ret < 0)
		goto out;

	FUNC1(150);

	ret = FUNC3(dev);
	if (ret < 0)
		goto out;

	/* Rewrite MAC address */
	FUNC0(data->mac_addr, dev->net->dev_addr, ETH_ALEN);
	ret = FUNC7(dev, SR_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
							data->mac_addr);
	if (ret < 0)
		goto out;

	return 0;

out:
	return ret;
}