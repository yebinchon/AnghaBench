#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usb_interface {int needs_remote_wakeup; TYPE_2__* cur_altsetting; int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct net_device {scalar_t__ mtu; scalar_t__ hard_header_len; int /*<<< orphan*/  phydev; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  access_lock; } ;
struct lan78xx_net {int delta; scalar_t__ hard_mtu; int /*<<< orphan*/  urb_intr; int /*<<< orphan*/  pipe_out; struct usb_device* udev; void* maxpacket; int /*<<< orphan*/  pipe_intr; TYPE_4__* ep_intr; int /*<<< orphan*/  pipe_in; TYPE_4__* ep_blkout; TYPE_4__* ep_blkin; TYPE_1__ stats; int /*<<< orphan*/  stat_monitor; int /*<<< orphan*/  deferred; int /*<<< orphan*/  wq; int /*<<< orphan*/  bh; int /*<<< orphan*/  phy_mutex; int /*<<< orphan*/  txq_pend; int /*<<< orphan*/  rxq_pause; int /*<<< orphan*/  done; int /*<<< orphan*/  txq; int /*<<< orphan*/  rxq; int /*<<< orphan*/  msg_enable; struct net_device* net; struct usb_interface* intf; } ;
struct TYPE_7__ {int bEndpointAddress; unsigned int bInterval; } ;
struct TYPE_8__ {TYPE_3__ desc; } ;
struct TYPE_6__ {TYPE_4__* endpoint; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_IN_PIPE ; 
 int /*<<< orphan*/  BULK_OUT_PIPE ; 
 int /*<<< orphan*/  DEFAULT_AUTOSUSPEND_DELAY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_SINGLE_PACKET_SIZE ; 
 int NETIF_MSG_DRV ; 
 int NETIF_MSG_LINK ; 
 int NETIF_MSG_PROBE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TX_TIMEOUT_JIFFIES ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  intr_complete ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lan78xx_bh ; 
 int FUNC10 (struct lan78xx_net*,struct usb_interface*) ; 
 int /*<<< orphan*/  lan78xx_delayedwork ; 
 int /*<<< orphan*/  lan78xx_ethtool_ops ; 
 int /*<<< orphan*/  lan78xx_netdev_ops ; 
 int FUNC11 (struct lan78xx_net*) ; 
 int /*<<< orphan*/  lan78xx_stat_monitor ; 
 int /*<<< orphan*/  FUNC12 (struct lan78xx_net*,struct usb_interface*) ; 
 int /*<<< orphan*/  msg_level ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct lan78xx_net* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct lan78xx_net*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,struct lan78xx_net*,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC26 (struct usb_device*) ; 
 void* FUNC27 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct usb_interface*,struct lan78xx_net*) ; 
 int /*<<< orphan*/  FUNC32 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC33(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct lan78xx_net *dev;
	struct net_device *netdev;
	struct usb_device *udev;
	int ret;
	unsigned maxp;
	unsigned period;
	u8 *buf = NULL;

	udev = FUNC7(intf);
	udev = FUNC26(udev);

	netdev = FUNC2(sizeof(struct lan78xx_net));
	if (!netdev) {
		FUNC3(&intf->dev, "Error: OOM\n");
		ret = -ENOMEM;
		goto out1;
	}

	/* netdev_printk() needs this */
	FUNC1(netdev, &intf->dev);

	dev = FUNC14(netdev);
	dev->udev = udev;
	dev->intf = intf;
	dev->net = netdev;
	dev->msg_enable = FUNC16(msg_level, NETIF_MSG_DRV
					| NETIF_MSG_PROBE | NETIF_MSG_LINK);

	FUNC20(&dev->rxq);
	FUNC20(&dev->txq);
	FUNC20(&dev->done);
	FUNC20(&dev->rxq_pause);
	FUNC20(&dev->txq_pend);
	FUNC13(&dev->phy_mutex);

	FUNC21(&dev->bh, lan78xx_bh, (unsigned long)dev);
	FUNC0(&dev->wq, lan78xx_delayedwork);
	FUNC6(&dev->deferred);

	netdev->netdev_ops = &lan78xx_netdev_ops;
	netdev->watchdog_timeo = TX_TIMEOUT_JIFFIES;
	netdev->ethtool_ops = &lan78xx_ethtool_ops;

	dev->delta = 1;
	FUNC22(&dev->stat_monitor, lan78xx_stat_monitor, 0);

	FUNC13(&dev->stats.access_lock);

	ret = FUNC10(dev, intf);
	if (ret < 0)
		goto out2;

	if (netdev->mtu > (dev->hard_mtu - netdev->hard_header_len))
		netdev->mtu = dev->hard_mtu - netdev->hard_header_len;

	/* MTU range: 68 - 9000 */
	netdev->max_mtu = MAX_SINGLE_PACKET_SIZE;

	dev->ep_blkin = (intf->cur_altsetting)->endpoint + 0;
	dev->ep_blkout = (intf->cur_altsetting)->endpoint + 1;
	dev->ep_intr = (intf->cur_altsetting)->endpoint + 2;

	dev->pipe_in = FUNC29(udev, BULK_IN_PIPE);
	dev->pipe_out = FUNC32(udev, BULK_OUT_PIPE);

	dev->pipe_intr = FUNC30(dev->udev,
					dev->ep_intr->desc.bEndpointAddress &
					USB_ENDPOINT_NUMBER_MASK);
	period = dev->ep_intr->desc.bInterval;

	maxp = FUNC27(dev->udev, dev->pipe_intr, 0);
	buf = FUNC9(maxp, GFP_KERNEL);
	if (buf) {
		dev->urb_intr = FUNC23(0, GFP_KERNEL);
		if (!dev->urb_intr) {
			ret = -ENOMEM;
			FUNC8(buf);
			goto out3;
		} else {
			FUNC24(dev->urb_intr, dev->udev,
					 dev->pipe_intr, buf, maxp,
					 intr_complete, dev, period);
		}
	}

	dev->maxpacket = FUNC27(dev->udev, dev->pipe_out, 1);

	/* driver requires remote-wakeup capability during autosuspend. */
	intf->needs_remote_wakeup = 1;

	ret = FUNC11(dev);
	if (ret < 0)
		goto out4;

	ret = FUNC19(netdev);
	if (ret != 0) {
		FUNC15(dev, probe, netdev, "couldn't register the device\n");
		goto out5;
	}

	FUNC31(intf, dev);

	ret = FUNC4(&udev->dev, true);

	 /* Default delay of 2sec has more overhead than advantage.
	  * Set to 10sec as default.
	  */
	FUNC18(&udev->dev,
					 DEFAULT_AUTOSUSPEND_DELAY);

	return 0;

out5:
	FUNC17(netdev->phydev);
out4:
	FUNC25(dev->urb_intr);
out3:
	FUNC12(dev, intf);
out2:
	FUNC5(netdev);
out1:
	FUNC28(udev);

	return ret;
}