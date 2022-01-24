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
typedef  int /*<<< orphan*/  ulong ;
typedef  int u32 ;
struct usbnet {int rx_urb_size; TYPE_2__* net; TYPE_1__* udev; scalar_t__* data; } ;
struct smsc95xx_priv {int mac_cr; } ;
struct TYPE_7__ {int /*<<< orphan*/  features; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_6__ {scalar_t__ speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFC_CFG ; 
 int AFC_CFG_DEFAULT ; 
 int /*<<< orphan*/  BULK_IN_DLY ; 
 int /*<<< orphan*/  BURST_CAP ; 
 int DEFAULT_BULK_IN_DELAY ; 
 int DEFAULT_FS_BURST_CAP_SIZE ; 
 int DEFAULT_HS_BURST_CAP_SIZE ; 
 scalar_t__ ETH_P_8021Q ; 
 int /*<<< orphan*/  FLOW ; 
 int FS_USB_PKT_SIZE ; 
 int HS_USB_PKT_SIZE ; 
 int /*<<< orphan*/  HW_CFG ; 
 int HW_CFG_BCE_ ; 
 int HW_CFG_BIR_ ; 
 int HW_CFG_LRST_ ; 
 int HW_CFG_MEF_ ; 
 int HW_CFG_RXDOFF_ ; 
 int /*<<< orphan*/  ID_REV ; 
 int /*<<< orphan*/  INT_EP_CTL ; 
 int INT_EP_CTL_PHY_INT_ ; 
 int /*<<< orphan*/  INT_STS ; 
 int INT_STS_CLEAR_ALL_ ; 
 int /*<<< orphan*/  LED_GPIO_CFG ; 
 int LED_GPIO_CFG_FDX_LED ; 
 int LED_GPIO_CFG_LNK_LED ; 
 int LED_GPIO_CFG_SPD_LED ; 
 int /*<<< orphan*/  MAC_CR ; 
 int MAX_SINGLE_PACKET_SIZE ; 
 int NET_IP_ALIGN ; 
 int PM_CTL_PHY_RST_ ; 
 int /*<<< orphan*/  PM_CTRL ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  VLAN1 ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,TYPE_2__*,char*,...) ; 
 int FUNC3 (struct usbnet*) ; 
 int FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct usbnet*) ; 
 int FUNC10 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ turbo_mode ; 

__attribute__((used)) static int FUNC11(struct usbnet *dev)
{
	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
	u32 read_buf, write_buf, burst_cap;
	int ret = 0, timeout;

	FUNC2(dev, ifup, dev->net, "entering smsc95xx_reset\n");

	ret = FUNC10(dev, HW_CFG, HW_CFG_LRST_);
	if (ret < 0)
		return ret;

	timeout = 0;
	do {
		FUNC0(10);
		ret = FUNC4(dev, HW_CFG, &read_buf);
		if (ret < 0)
			return ret;
		timeout++;
	} while ((read_buf & HW_CFG_LRST_) && (timeout < 100));

	if (timeout >= 100) {
		FUNC1(dev->net, "timeout waiting for completion of Lite Reset\n");
		return ret;
	}

	ret = FUNC10(dev, PM_CTRL, PM_CTL_PHY_RST_);
	if (ret < 0)
		return ret;

	timeout = 0;
	do {
		FUNC0(10);
		ret = FUNC4(dev, PM_CTRL, &read_buf);
		if (ret < 0)
			return ret;
		timeout++;
	} while ((read_buf & PM_CTL_PHY_RST_) && (timeout < 100));

	if (timeout >= 100) {
		FUNC1(dev->net, "timeout waiting for PHY Reset\n");
		return ret;
	}

	ret = FUNC6(dev);
	if (ret < 0)
		return ret;

	FUNC2(dev, ifup, dev->net, "MAC Address: %pM\n",
		  dev->net->dev_addr);

	ret = FUNC4(dev, HW_CFG, &read_buf);
	if (ret < 0)
		return ret;

	FUNC2(dev, ifup, dev->net, "Read Value from HW_CFG : 0x%08x\n",
		  read_buf);

	read_buf |= HW_CFG_BIR_;

	ret = FUNC10(dev, HW_CFG, read_buf);
	if (ret < 0)
		return ret;

	ret = FUNC4(dev, HW_CFG, &read_buf);
	if (ret < 0)
		return ret;

	FUNC2(dev, ifup, dev->net,
		  "Read Value from HW_CFG after writing HW_CFG_BIR_: 0x%08x\n",
		  read_buf);

	if (!turbo_mode) {
		burst_cap = 0;
		dev->rx_urb_size = MAX_SINGLE_PACKET_SIZE;
	} else if (dev->udev->speed == USB_SPEED_HIGH) {
		burst_cap = DEFAULT_HS_BURST_CAP_SIZE / HS_USB_PKT_SIZE;
		dev->rx_urb_size = DEFAULT_HS_BURST_CAP_SIZE;
	} else {
		burst_cap = DEFAULT_FS_BURST_CAP_SIZE / FS_USB_PKT_SIZE;
		dev->rx_urb_size = DEFAULT_FS_BURST_CAP_SIZE;
	}

	FUNC2(dev, ifup, dev->net, "rx_urb_size=%ld\n",
		  (ulong)dev->rx_urb_size);

	ret = FUNC10(dev, BURST_CAP, burst_cap);
	if (ret < 0)
		return ret;

	ret = FUNC4(dev, BURST_CAP, &read_buf);
	if (ret < 0)
		return ret;

	FUNC2(dev, ifup, dev->net,
		  "Read Value from BURST_CAP after writing: 0x%08x\n",
		  read_buf);

	ret = FUNC10(dev, BULK_IN_DLY, DEFAULT_BULK_IN_DELAY);
	if (ret < 0)
		return ret;

	ret = FUNC4(dev, BULK_IN_DLY, &read_buf);
	if (ret < 0)
		return ret;

	FUNC2(dev, ifup, dev->net,
		  "Read Value from BULK_IN_DLY after writing: 0x%08x\n",
		  read_buf);

	ret = FUNC4(dev, HW_CFG, &read_buf);
	if (ret < 0)
		return ret;

	FUNC2(dev, ifup, dev->net, "Read Value from HW_CFG: 0x%08x\n",
		  read_buf);

	if (turbo_mode)
		read_buf |= (HW_CFG_MEF_ | HW_CFG_BCE_);

	read_buf &= ~HW_CFG_RXDOFF_;

	/* set Rx data offset=2, Make IP header aligns on word boundary. */
	read_buf |= NET_IP_ALIGN << 9;

	ret = FUNC10(dev, HW_CFG, read_buf);
	if (ret < 0)
		return ret;

	ret = FUNC4(dev, HW_CFG, &read_buf);
	if (ret < 0)
		return ret;

	FUNC2(dev, ifup, dev->net,
		  "Read Value from HW_CFG after writing: 0x%08x\n", read_buf);

	ret = FUNC10(dev, INT_STS, INT_STS_CLEAR_ALL_);
	if (ret < 0)
		return ret;

	ret = FUNC4(dev, ID_REV, &read_buf);
	if (ret < 0)
		return ret;
	FUNC2(dev, ifup, dev->net, "ID_REV = 0x%08x\n", read_buf);

	/* Configure GPIO pins as LED outputs */
	write_buf = LED_GPIO_CFG_SPD_LED | LED_GPIO_CFG_LNK_LED |
		LED_GPIO_CFG_FDX_LED;
	ret = FUNC10(dev, LED_GPIO_CFG, write_buf);
	if (ret < 0)
		return ret;

	/* Init Tx */
	ret = FUNC10(dev, FLOW, 0);
	if (ret < 0)
		return ret;

	ret = FUNC10(dev, AFC_CFG, AFC_CFG_DEFAULT);
	if (ret < 0)
		return ret;

	/* Don't need mac_cr_lock during initialisation */
	ret = FUNC4(dev, MAC_CR, &pdata->mac_cr);
	if (ret < 0)
		return ret;

	/* Init Rx */
	/* Set Vlan */
	ret = FUNC10(dev, VLAN1, (u32)ETH_P_8021Q);
	if (ret < 0)
		return ret;

	/* Enable or disable checksum offload engines */
	ret = FUNC5(dev->net, dev->net->features);
	if (ret < 0) {
		FUNC1(dev->net, "Failed to set checksum offload features\n");
		return ret;
	}

	FUNC7(dev->net);

	ret = FUNC3(dev);
	if (ret < 0) {
		FUNC1(dev->net, "Failed to init PHY\n");
		return ret;
	}

	ret = FUNC4(dev, INT_EP_CTL, &read_buf);
	if (ret < 0)
		return ret;

	/* enable PHY interrupts */
	read_buf |= INT_EP_CTL_PHY_INT_;

	ret = FUNC10(dev, INT_EP_CTL, read_buf);
	if (ret < 0)
		return ret;

	ret = FUNC9(dev);
	if (ret < 0) {
		FUNC1(dev->net, "Failed to start TX path\n");
		return ret;
	}

	ret = FUNC8(dev, 0);
	if (ret < 0) {
		FUNC1(dev->net, "Failed to start RX path\n");
		return ret;
	}

	FUNC2(dev, ifup, dev->net, "smsc95xx_reset, return 0\n");
	return 0;
}