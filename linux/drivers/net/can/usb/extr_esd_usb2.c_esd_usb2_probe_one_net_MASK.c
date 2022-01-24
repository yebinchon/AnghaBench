#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct net_device {int dev_id; int /*<<< orphan*/  name; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  freq; } ;
struct TYPE_10__ {int /*<<< orphan*/  do_get_berr_counter; int /*<<< orphan*/  do_set_mode; int /*<<< orphan*/  do_set_bittiming; int /*<<< orphan*/ * bittiming_const; int /*<<< orphan*/  ctrlmode_supported; TYPE_4__ clock; int /*<<< orphan*/  state; } ;
struct esd_usb2_net_priv {int index; TYPE_5__ can; struct net_device* netdev; struct esd_usb2* usb2; TYPE_1__* tx_contexts; int /*<<< orphan*/  active_tx_jobs; int /*<<< orphan*/  tx_submitted; } ;
struct esd_usb2 {struct esd_usb2_net_priv** nets; TYPE_3__* udev; } ;
struct TYPE_7__ {int /*<<< orphan*/  idProduct; } ;
struct TYPE_8__ {TYPE_2__ descriptor; } ;
struct TYPE_6__ {int echo_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_CTRLMODE_3_SAMPLES ; 
 int /*<<< orphan*/  CAN_CTRLMODE_LISTENONLY ; 
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ESD_USB2_CAN_CLOCK ; 
 int /*<<< orphan*/  ESD_USBM_CAN_CLOCK ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 int MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ USB_CANUSBM_PRODUCT_ID ; 
 struct net_device* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  esd_usb2_bittiming_const ; 
 int /*<<< orphan*/  esd_usb2_get_berr_counter ; 
 int /*<<< orphan*/  esd_usb2_netdev_ops ; 
 int /*<<< orphan*/  esd_usb2_set_bittiming ; 
 int /*<<< orphan*/  esd_usb2_set_mode ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct esd_usb2_net_priv* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 struct esd_usb2* FUNC10 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC11(struct usb_interface *intf, int index)
{
	struct esd_usb2 *dev = FUNC10(intf);
	struct net_device *netdev;
	struct esd_usb2_net_priv *priv;
	int err = 0;
	int i;

	netdev = FUNC1(sizeof(*priv), MAX_TX_URBS);
	if (!netdev) {
		FUNC3(&intf->dev, "couldn't alloc candev\n");
		err = -ENOMEM;
		goto done;
	}

	priv = FUNC8(netdev);

	FUNC5(&priv->tx_submitted);
	FUNC2(&priv->active_tx_jobs, 0);

	for (i = 0; i < MAX_TX_URBS; i++)
		priv->tx_contexts[i].echo_index = MAX_TX_URBS;

	priv->usb2 = dev;
	priv->netdev = netdev;
	priv->index = index;

	priv->can.state = CAN_STATE_STOPPED;
	priv->can.ctrlmode_supported = CAN_CTRLMODE_LISTENONLY;

	if (FUNC6(dev->udev->descriptor.idProduct) ==
	    USB_CANUSBM_PRODUCT_ID)
		priv->can.clock.freq = ESD_USBM_CAN_CLOCK;
	else {
		priv->can.clock.freq = ESD_USB2_CAN_CLOCK;
		priv->can.ctrlmode_supported |= CAN_CTRLMODE_3_SAMPLES;
	}

	priv->can.bittiming_const = &esd_usb2_bittiming_const;
	priv->can.do_set_bittiming = esd_usb2_set_bittiming;
	priv->can.do_set_mode = esd_usb2_set_mode;
	priv->can.do_get_berr_counter = esd_usb2_get_berr_counter;

	netdev->flags |= IFF_ECHO; /* we support local echo */

	netdev->netdev_ops = &esd_usb2_netdev_ops;

	FUNC0(netdev, &intf->dev);
	netdev->dev_id = index;

	err = FUNC9(netdev);
	if (err) {
		FUNC3(&intf->dev, "couldn't register CAN device: %d\n", err);
		FUNC4(netdev);
		err = -ENOMEM;
		goto done;
	}

	dev->nets[index] = priv;
	FUNC7(netdev, "device %s registered\n", netdev->name);

done:
	return err;
}