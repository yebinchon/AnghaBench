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
typedef  int u32 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  iProduct; } ;
struct usb_device {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;
struct TYPE_6__ {int /*<<< orphan*/  freq; } ;
struct TYPE_7__ {int ctrlmode_supported; int /*<<< orphan*/  do_get_berr_counter; int /*<<< orphan*/  do_set_mode; int /*<<< orphan*/ * bittiming_const; TYPE_2__ clock; int /*<<< orphan*/  state; } ;
struct usb_8dev_priv {struct net_device* netdev; int /*<<< orphan*/  usb_8dev_cmd_lock; int /*<<< orphan*/  cmd_msg_buffer; TYPE_4__* tx_contexts; int /*<<< orphan*/  active_tx_urbs; int /*<<< orphan*/  tx_submitted; int /*<<< orphan*/  rx_submitted; TYPE_3__ can; struct usb_device* udev; } ;
struct usb_8dev_cmd_msg {int dummy; } ;
struct net_device {int /*<<< orphan*/  flags; int /*<<< orphan*/ * netdev_ops; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {int echo_index; } ;

/* Variables and functions */
 int CAN_CTRLMODE_LISTENONLY ; 
 int CAN_CTRLMODE_LOOPBACK ; 
 int CAN_CTRLMODE_ONE_SHOT ; 
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 int MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_8DEV_ABP_CLOCK ; 
 struct net_device* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*,int,int,int,int) ; 
 struct usb_8dev_priv* FUNC13 (struct net_device*) ; 
 int FUNC14 (struct net_device*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  usb_8dev_bittiming_const ; 
 int FUNC17 (struct usb_8dev_priv*,int*) ; 
 int /*<<< orphan*/  usb_8dev_get_berr_counter ; 
 int /*<<< orphan*/  usb_8dev_netdev_ops ; 
 int /*<<< orphan*/  usb_8dev_set_mode ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*,struct usb_8dev_priv*) ; 
 scalar_t__ FUNC19 (struct usb_device*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC20(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct net_device *netdev;
	struct usb_8dev_priv *priv;
	int i, err = -ENOMEM;
	u32 version;
	char buf[18];
	struct usb_device *usbdev = FUNC9(intf);

	/* product id looks strange, better we also check iProduct string */
	if (FUNC19(usbdev, usbdev->descriptor.iProduct, buf,
		       sizeof(buf)) > 0 && FUNC15(buf, "USB2CAN converter")) {
		FUNC4(&usbdev->dev, "ignoring: not an USB2CAN converter\n");
		return -ENODEV;
	}

	netdev = FUNC1(sizeof(struct usb_8dev_priv), MAX_TX_URBS);
	if (!netdev) {
		FUNC3(&intf->dev, "Couldn't alloc candev\n");
		return -ENOMEM;
	}

	priv = FUNC13(netdev);

	priv->udev = usbdev;
	priv->netdev = netdev;

	priv->can.state = CAN_STATE_STOPPED;
	priv->can.clock.freq = USB_8DEV_ABP_CLOCK;
	priv->can.bittiming_const = &usb_8dev_bittiming_const;
	priv->can.do_set_mode = usb_8dev_set_mode;
	priv->can.do_get_berr_counter = usb_8dev_get_berr_counter;
	priv->can.ctrlmode_supported = CAN_CTRLMODE_LOOPBACK |
				      CAN_CTRLMODE_LISTENONLY |
				      CAN_CTRLMODE_ONE_SHOT;

	netdev->netdev_ops = &usb_8dev_netdev_ops;

	netdev->flags |= IFF_ECHO; /* we support local echo */

	FUNC8(&priv->rx_submitted);

	FUNC8(&priv->tx_submitted);
	FUNC2(&priv->active_tx_urbs, 0);

	for (i = 0; i < MAX_TX_URBS; i++)
		priv->tx_contexts[i].echo_index = MAX_TX_URBS;

	priv->cmd_msg_buffer = FUNC6(&intf->dev, sizeof(struct usb_8dev_cmd_msg),
					    GFP_KERNEL);
	if (!priv->cmd_msg_buffer)
		goto cleanup_candev;

	FUNC18(intf, priv);

	FUNC0(netdev, &intf->dev);

	FUNC10(&priv->usb_8dev_cmd_lock);

	err = FUNC14(netdev);
	if (err) {
		FUNC11(netdev,
			"couldn't register CAN device: %d\n", err);
		goto cleanup_candev;
	}

	err = FUNC17(priv, &version);
	if (err) {
		FUNC11(netdev, "can't get firmware version\n");
		goto cleanup_unregister_candev;
	} else {
		FUNC12(netdev,
			 "firmware: %d.%d, hardware: %d.%d\n",
			 (version>>24) & 0xff, (version>>16) & 0xff,
			 (version>>8) & 0xff, version & 0xff);
	}

	FUNC5(netdev);

	return 0;

cleanup_unregister_candev:
	FUNC16(priv->netdev);

cleanup_candev:
	FUNC7(netdev);

	return err;

}