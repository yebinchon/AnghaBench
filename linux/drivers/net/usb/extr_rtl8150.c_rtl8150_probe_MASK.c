#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_10__ {int intr_interval; int /*<<< orphan*/  intr_buff; struct net_device* netdev; struct usb_device* udev; int /*<<< orphan*/  rx_pool_lock; int /*<<< orphan*/  tl; } ;
typedef  TYPE_1__ rtl8150_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTBUFSIZE ; 
 int /*<<< orphan*/  RTL8150_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 struct usb_device* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  ops ; 
 scalar_t__ FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  rtl8150_netdev_ops ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  rx_fixup ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC19(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC9(intf);
	rtl8150_t *dev;
	struct net_device *netdev;

	netdev = FUNC2(sizeof(rtl8150_t));
	if (!netdev)
		return -ENOMEM;

	dev = FUNC12(netdev);

	dev->intr_buff = FUNC11(INTBUFSIZE, GFP_KERNEL);
	if (!dev->intr_buff) {
		FUNC7(netdev);
		return -ENOMEM;
	}

	FUNC17(&dev->tl, rx_fixup, (unsigned long)dev);
	FUNC16(&dev->rx_pool_lock);

	dev->udev = udev;
	dev->netdev = netdev;
	netdev->netdev_ops = &rtl8150_netdev_ops;
	netdev->watchdog_timeo = RTL8150_TX_TIMEOUT;
	netdev->ethtool_ops = &ops;
	dev->intr_interval = 100;	/* 100ms */

	if (!FUNC1(dev)) {
		FUNC3(&intf->dev, "out of memory\n");
		goto out;
	}
	if (!FUNC14(dev)) {
		FUNC3(&intf->dev, "couldn't reset the device\n");
		goto out1;
	}
	FUNC5(dev);
	FUNC15(dev);

	FUNC18(intf, dev);
	FUNC0(netdev, &intf->dev);
	if (FUNC13(netdev) != 0) {
		FUNC3(&intf->dev, "couldn't register the device\n");
		goto out2;
	}

	FUNC4(&intf->dev, "%s: rtl8150 is detected\n", netdev->name);

	return 0;

out2:
	FUNC18(intf, NULL);
	FUNC8(dev);
out1:
	FUNC6(dev);
out:
	FUNC10(dev->intr_buff);
	FUNC7(netdev);
	return -EIO;
}