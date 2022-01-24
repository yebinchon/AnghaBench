#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct usbnet {int rx_urb_size; unsigned long partial_data; TYPE_2__* net; scalar_t__ hard_mtu; struct usb_device* udev; } ;
struct usb_interface {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  iProduct; } ;
struct usb_device {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;
typedef  int /*<<< orphan*/  link ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int* dev_addr; scalar_t__ hard_header_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ETHERNET_MODE ; 
 int /*<<< orphan*/  CMD_GET_LINK_STATUS ; 
 int /*<<< orphan*/  CMD_GET_MAC_ADDR ; 
 int /*<<< orphan*/  CMD_START ; 
 scalar_t__ CX82310_MTU ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int,char*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (struct usb_device*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (struct usbnet*,struct usb_interface*) ; 

__attribute__((used)) static int FUNC9(struct usbnet *dev, struct usb_interface *intf)
{
	int ret;
	char buf[15];
	struct usb_device *udev = dev->udev;
	u8 link[3];
	int timeout = 50;

	/* avoid ADSL modems - continue only if iProduct is "USB NET CARD" */
	if (FUNC7(udev, udev->descriptor.iProduct, buf, sizeof(buf)) > 0
	    && FUNC6(buf, "USB NET CARD")) {
		FUNC2(&udev->dev, "ignoring: probably an ADSL modem\n");
		return -ENODEV;
	}

	ret = FUNC8(dev, intf);
	if (ret)
		return ret;

	/*
	 * this must not include ethernet header as the device can send partial
	 * packets with no header (and sometimes even empty URBs)
	 */
	dev->net->hard_header_len = 0;
	/* we can send at most 1514 bytes of data (+ 2-byte header) per URB */
	dev->hard_mtu = CX82310_MTU + 2;
	/* we can receive URBs up to 4KB from the device */
	dev->rx_urb_size = 4096;

	dev->partial_data = (unsigned long) FUNC4(dev->hard_mtu, GFP_KERNEL);
	if (!dev->partial_data)
		return -ENOMEM;

	/* wait for firmware to become ready (indicated by the link being up) */
	while (--timeout) {
		ret = FUNC0(dev, CMD_GET_LINK_STATUS, true, NULL, 0,
				  link, sizeof(link));
		/* the command can time out during boot - it's not an error */
		if (!ret && link[0] == 1 && link[2] == 1)
			break;
		FUNC5(500);
	}
	if (!timeout) {
		FUNC1(&udev->dev, "firmware not ready in time\n");
		ret = -ETIMEDOUT;
		goto err;
	}

	/* enable ethernet mode (?) */
	ret = FUNC0(dev, CMD_ETHERNET_MODE, true, "\x01", 1, NULL, 0);
	if (ret) {
		FUNC1(&udev->dev, "unable to enable ethernet mode: %d\n",
			ret);
		goto err;
	}

	/* get the MAC address */
	ret = FUNC0(dev, CMD_GET_MAC_ADDR, true, NULL, 0,
			  dev->net->dev_addr, ETH_ALEN);
	if (ret) {
		FUNC1(&udev->dev, "unable to read MAC address: %d\n", ret);
		goto err;
	}

	/* start (does not seem to have any effect?) */
	ret = FUNC0(dev, CMD_START, false, NULL, 0, NULL, 0);
	if (ret)
		goto err;

	return 0;
err:
	FUNC3((void *)dev->partial_data);
	return ret;
}