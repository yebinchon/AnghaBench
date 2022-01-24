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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct net_device {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  name; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct ipheth_device {int confirmed_pairing; int /*<<< orphan*/ * ctrl_buf; int /*<<< orphan*/  carrier_work; scalar_t__ bulk_out; scalar_t__ bulk_in; struct usb_interface* intf; struct net_device* net; struct usb_device* udev; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPHETH_ALT_INTFNUM ; 
 int /*<<< orphan*/  IPHETH_CTRL_BUF_SIZE ; 
 int /*<<< orphan*/  IPHETH_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 
 int FUNC7 (struct ipheth_device*) ; 
 int /*<<< orphan*/  ipheth_carrier_check_work ; 
 int /*<<< orphan*/  FUNC8 (struct ipheth_device*) ; 
 int FUNC9 (struct ipheth_device*) ; 
 int /*<<< orphan*/  ipheth_netdev_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipheth_device* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  ops ; 
 int FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 struct usb_host_interface* FUNC17 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC19 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_interface*,struct ipheth_device*) ; 

__attribute__((used)) static int FUNC21(struct usb_interface *intf,
			const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC6(intf);
	struct usb_host_interface *hintf;
	struct usb_endpoint_descriptor *endp;
	struct ipheth_device *dev;
	struct net_device *netdev;
	int i;
	int retval;

	netdev = FUNC2(sizeof(struct ipheth_device));
	if (!netdev)
		return -ENOMEM;

	netdev->netdev_ops = &ipheth_netdev_ops;
	netdev->watchdog_timeo = IPHETH_TX_TIMEOUT;
	FUNC16(netdev->name, "eth%d");

	dev = FUNC12(netdev);
	dev->udev = udev;
	dev->net = netdev;
	dev->intf = intf;
	dev->confirmed_pairing = false;
	/* Set up endpoints */
	hintf = FUNC17(intf, IPHETH_ALT_INTFNUM);
	if (hintf == NULL) {
		retval = -ENODEV;
		FUNC3(&intf->dev, "Unable to find alternate settings interface\n");
		goto err_endpoints;
	}

	for (i = 0; i < hintf->desc.bNumEndpoints; i++) {
		endp = &hintf->endpoint[i].desc;
		if (FUNC18(endp))
			dev->bulk_in = endp->bEndpointAddress;
		else if (FUNC19(endp))
			dev->bulk_out = endp->bEndpointAddress;
	}
	if (!(dev->bulk_in && dev->bulk_out)) {
		retval = -ENODEV;
		FUNC3(&intf->dev, "Unable to find endpoints\n");
		goto err_endpoints;
	}

	dev->ctrl_buf = FUNC11(IPHETH_CTRL_BUF_SIZE, GFP_KERNEL);
	if (dev->ctrl_buf == NULL) {
		retval = -ENOMEM;
		goto err_alloc_ctrl_buf;
	}

	retval = FUNC9(dev);
	if (retval)
		goto err_get_macaddr;

	FUNC0(&dev->carrier_work, ipheth_carrier_check_work);

	retval = FUNC7(dev);
	if (retval) {
		FUNC3(&intf->dev, "error allocating urbs: %d\n", retval);
		goto err_alloc_urbs;
	}

	FUNC20(intf, dev);

	FUNC1(netdev, &intf->dev);
	netdev->ethtool_ops = &ops;

	retval = FUNC15(netdev);
	if (retval) {
		FUNC3(&intf->dev, "error registering netdev: %d\n", retval);
		retval = -EIO;
		goto err_register_netdev;
	}
	// carrier down and transmit queues stopped until packet from device
	FUNC13(netdev);
	FUNC14(netdev);
	FUNC4(&intf->dev, "Apple iPhone USB Ethernet device attached\n");
	return 0;

err_register_netdev:
	FUNC8(dev);
err_alloc_urbs:
err_get_macaddr:
err_alloc_ctrl_buf:
	FUNC10(dev->ctrl_buf);
err_endpoints:
	FUNC5(netdev);
	return retval;
}