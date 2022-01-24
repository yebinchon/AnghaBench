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
struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bcdDevice; scalar_t__ bDescriptorType; scalar_t__ bLength; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; int /*<<< orphan*/  devnum; } ;
struct net_device {int mtu; int name; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  broadcast; } ;
struct TYPE_4__ {int statistics_mask; int max_multicast_filters; int hw_addr; int /*<<< orphan*/  segment_size; } ;
struct kaweth_device {void* tx_urb; void* rx_urb; void* irq_urb; int /*<<< orphan*/  intbufferhandle; void* intbuffer; struct usb_device* dev; int /*<<< orphan*/  rxbufferhandle; void* rx_buf; struct net_device* net; int /*<<< orphan*/  lowmem_work; TYPE_2__ configuration; int /*<<< orphan*/ * firmware_buf; int /*<<< orphan*/  term_wait; int /*<<< orphan*/  device_lock; struct usb_interface* intf; } ;
typedef  int eth_addr_t ;
typedef  int /*<<< orphan*/  bcast_addr ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTBUFFERSIZE ; 
 int /*<<< orphan*/  KAWETH_BUF_SIZE ; 
 int KAWETH_PACKET_FILTER_BROADCAST ; 
 int KAWETH_PACKET_FILTER_DIRECTED ; 
 int KAWETH_PACKET_FILTER_MULTICAST ; 
 int /*<<< orphan*/  KAWETH_SOFS_TO_WAIT ; 
 int /*<<< orphan*/  KAWETH_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC10 (struct usb_interface*) ; 
 int FUNC11 (struct kaweth_device*,char*,int,int) ; 
 int /*<<< orphan*/  kaweth_netdev_ops ; 
 int FUNC12 (struct kaweth_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct kaweth_device*) ; 
 int /*<<< orphan*/  kaweth_resubmit_tl ; 
 int FUNC14 (struct kaweth_device*,int) ; 
 scalar_t__ FUNC15 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct kaweth_device*,int) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int const*,int) ; 
 struct kaweth_device* FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  ops ; 
 scalar_t__ FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 void* FUNC24 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (void*) ; 
 int /*<<< orphan*/  FUNC28 (struct usb_interface*,struct kaweth_device*) ; 

__attribute__((used)) static int FUNC29(
		struct usb_interface *intf,
		const struct usb_device_id *id      /* from id_table */
	)
{
	struct device *dev = &intf->dev;
	struct usb_device *udev = FUNC10(intf);
	struct kaweth_device *kaweth;
	struct net_device *netdev;
	const eth_addr_t bcast_addr = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
	int result = 0;
	int rv = -EIO;

	FUNC4(dev,
		"Kawasaki Device Probe (Device number:%d): 0x%4.4x:0x%4.4x:0x%4.4x\n",
		udev->devnum, FUNC18(udev->descriptor.idVendor),
		FUNC18(udev->descriptor.idProduct),
		FUNC18(udev->descriptor.bcdDevice));

	FUNC4(dev, "Device at %p\n", udev);

	FUNC4(dev, "Descriptor length: %x type: %x\n",
		(int)udev->descriptor.bLength,
		(int)udev->descriptor.bDescriptorType);

	netdev = FUNC3(sizeof(*kaweth));
	if (!netdev)
		return -ENOMEM;

	kaweth = FUNC21(netdev);
	kaweth->dev = udev;
	kaweth->net = netdev;
	kaweth->intf = intf;

	FUNC23(&kaweth->device_lock);
	FUNC9(&kaweth->term_wait);

	FUNC4(dev, "Resetting.\n");

	FUNC13(kaweth);

	/*
	 * If high byte of bcdDevice is nonzero, firmware is already
	 * downloaded. Don't try to do it again, or we'll hang the device.
	 */

	if (FUNC18(udev->descriptor.bcdDevice) >> 8) {
		FUNC6(dev, "Firmware present in device.\n");
	} else {
		/* Download the firmware */
		FUNC6(dev, "Downloading firmware...\n");
		kaweth->firmware_buf = (__u8 *)FUNC2(GFP_KERNEL);
		if (!kaweth->firmware_buf) {
			rv = -ENOMEM;
			goto err_free_netdev;
		}
		if ((result = FUNC11(kaweth,
						      "kaweth/new_code.bin",
						      100,
						      2)) < 0) {
			FUNC5(dev, "Error downloading firmware (%d)\n",
				result);
			goto err_fw;
		}

		if ((result = FUNC11(kaweth,
						      "kaweth/new_code_fix.bin",
						      100,
						      3)) < 0) {
			FUNC5(dev, "Error downloading firmware fix (%d)\n",
				result);
			goto err_fw;
		}

		if ((result = FUNC11(kaweth,
						      "kaweth/trigger_code.bin",
						      126,
						      2)) < 0) {
			FUNC5(dev, "Error downloading trigger code (%d)\n",
				result);
			goto err_fw;

		}

		if ((result = FUNC11(kaweth,
						      "kaweth/trigger_code_fix.bin",
						      126,
						      3)) < 0) {
			FUNC5(dev, "Error downloading trigger code fix (%d)\n", result);
			goto err_fw;
		}


		if ((result = FUNC17(kaweth, 126)) < 0) {
			FUNC5(dev, "Error triggering firmware (%d)\n", result);
			goto err_fw;
		}

		/* Device will now disappear for a moment...  */
		FUNC6(dev, "Firmware loaded.  I'll be back...\n");
err_fw:
		FUNC8((unsigned long)kaweth->firmware_buf);
		FUNC7(netdev);
		return -EIO;
	}

	result = FUNC12(kaweth);

	if(result < 0) {
		FUNC5(dev, "Error reading configuration (%d), no net device created\n", result);
		goto err_free_netdev;
	}

	FUNC6(dev, "Statistics collection: %x\n", kaweth->configuration.statistics_mask);
	FUNC6(dev, "Multicast filter limit: %x\n", kaweth->configuration.max_multicast_filters & ((1 << 15) - 1));
	FUNC6(dev, "MTU: %d\n", FUNC18(kaweth->configuration.segment_size));
	FUNC6(dev, "Read MAC address %pM\n", kaweth->configuration.hw_addr);

	if(!FUNC19(&kaweth->configuration.hw_addr,
                   &bcast_addr,
		   sizeof(bcast_addr))) {
		FUNC5(dev, "Firmware not functioning properly, no net device created\n");
		goto err_free_netdev;
	}

	if(FUNC16(kaweth, KAWETH_BUF_SIZE) < 0) {
		FUNC4(dev, "Error setting URB size\n");
		goto err_free_netdev;
	}

	if(FUNC15(kaweth, KAWETH_SOFS_TO_WAIT) < 0) {
		FUNC5(dev, "Error setting SOFS wait\n");
		goto err_free_netdev;
	}

	result = FUNC14(kaweth,
                                           KAWETH_PACKET_FILTER_DIRECTED |
                                           KAWETH_PACKET_FILTER_BROADCAST |
                                           KAWETH_PACKET_FILTER_MULTICAST);

	if(result < 0) {
		FUNC5(dev, "Error setting receive filter\n");
		goto err_free_netdev;
	}

	FUNC4(dev, "Initializing net device.\n");

	kaweth->tx_urb = FUNC25(0, GFP_KERNEL);
	if (!kaweth->tx_urb)
		goto err_free_netdev;
	kaweth->rx_urb = FUNC25(0, GFP_KERNEL);
	if (!kaweth->rx_urb)
		goto err_only_tx;
	kaweth->irq_urb = FUNC25(0, GFP_KERNEL);
	if (!kaweth->irq_urb)
		goto err_tx_and_rx;

	kaweth->intbuffer = FUNC24(	kaweth->dev,
						INTBUFFERSIZE,
						GFP_KERNEL,
						&kaweth->intbufferhandle);
	if (!kaweth->intbuffer)
		goto err_tx_and_rx_and_irq;
	kaweth->rx_buf = FUNC24(	kaweth->dev,
						KAWETH_BUF_SIZE,
						GFP_KERNEL,
						&kaweth->rxbufferhandle);
	if (!kaweth->rx_buf)
		goto err_all_but_rxbuf;

	FUNC20(netdev->broadcast, &bcast_addr, sizeof(bcast_addr));
	FUNC20(netdev->dev_addr, &kaweth->configuration.hw_addr,
               sizeof(kaweth->configuration.hw_addr));

	netdev->netdev_ops = &kaweth_netdev_ops;
	netdev->watchdog_timeo = KAWETH_TX_TIMEOUT;
	netdev->mtu = FUNC18(kaweth->configuration.segment_size);
	netdev->ethtool_ops = &ops;

	/* kaweth is zeroed as part of alloc_netdev */
	FUNC0(&kaweth->lowmem_work, kaweth_resubmit_tl);
	FUNC28(intf, kaweth);

	FUNC1(netdev, dev);
	if (FUNC22(netdev) != 0) {
		FUNC5(dev, "Error registering netdev.\n");
		goto err_intfdata;
	}

	FUNC6(dev, "kaweth interface created at %s\n",
		 kaweth->net->name);

	return 0;

err_intfdata:
	FUNC28(intf, NULL);
	FUNC26(kaweth->dev, KAWETH_BUF_SIZE, (void *)kaweth->rx_buf, kaweth->rxbufferhandle);
err_all_but_rxbuf:
	FUNC26(kaweth->dev, INTBUFFERSIZE, (void *)kaweth->intbuffer, kaweth->intbufferhandle);
err_tx_and_rx_and_irq:
	FUNC27(kaweth->irq_urb);
err_tx_and_rx:
	FUNC27(kaweth->rx_urb);
err_only_tx:
	FUNC27(kaweth->tx_urb);
err_free_netdev:
	FUNC7(netdev);

	return rv;
}