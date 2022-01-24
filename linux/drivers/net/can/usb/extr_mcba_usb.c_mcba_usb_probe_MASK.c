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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  flags; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  do_set_bittiming; int /*<<< orphan*/  do_get_berr_counter; int /*<<< orphan*/  do_set_mode; int /*<<< orphan*/  do_set_termination; void* bitrate_const_cnt; void* bitrate_const; void* termination_const_cnt; void* termination_const; int /*<<< orphan*/  state; } ;
struct mcba_priv {int usb_ka_first_pass; int can_ka_first_pass; int can_speed_check; struct net_device* netdev; TYPE_1__ can; int /*<<< orphan*/  tx_submitted; int /*<<< orphan*/  rx_submitted; struct usb_device* udev; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 int /*<<< orphan*/  MCBA_MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC8 (struct usb_interface*) ; 
 void* mcba_bitrate ; 
 int /*<<< orphan*/  mcba_net_get_berr_counter ; 
 int /*<<< orphan*/  mcba_net_set_bittiming ; 
 int /*<<< orphan*/  mcba_net_set_mode ; 
 int /*<<< orphan*/  mcba_netdev_ops ; 
 int /*<<< orphan*/  mcba_set_termination ; 
 void* mcba_termination ; 
 int FUNC9 (struct mcba_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,int) ; 
 struct mcba_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,struct mcba_priv*) ; 

__attribute__((used)) static int FUNC17(struct usb_interface *intf,
			  const struct usb_device_id *id)
{
	struct net_device *netdev;
	struct mcba_priv *priv;
	int err = -ENOMEM;
	struct usb_device *usbdev = FUNC8(intf);

	netdev = FUNC2(sizeof(struct mcba_priv), MCBA_MAX_TX_URBS);
	if (!netdev) {
		FUNC3(&intf->dev, "Couldn't alloc candev\n");
		return -ENOMEM;
	}

	priv = FUNC11(netdev);

	priv->udev = usbdev;
	priv->netdev = netdev;
	priv->usb_ka_first_pass = true;
	priv->can_ka_first_pass = true;
	priv->can_speed_check = false;

	FUNC7(&priv->rx_submitted);
	FUNC7(&priv->tx_submitted);

	FUNC16(intf, priv);

	/* Init CAN device */
	priv->can.state = CAN_STATE_STOPPED;
	priv->can.termination_const = mcba_termination;
	priv->can.termination_const_cnt = FUNC0(mcba_termination);
	priv->can.bitrate_const = mcba_bitrate;
	priv->can.bitrate_const_cnt = FUNC0(mcba_bitrate);

	priv->can.do_set_termination = mcba_set_termination;
	priv->can.do_set_mode = mcba_net_set_mode;
	priv->can.do_get_berr_counter = mcba_net_get_berr_counter;
	priv->can.do_set_bittiming = mcba_net_set_bittiming;

	netdev->netdev_ops = &mcba_netdev_ops;

	netdev->flags |= IFF_ECHO; /* we support local echo */

	FUNC1(netdev, &intf->dev);

	err = FUNC14(netdev);
	if (err) {
		FUNC10(netdev, "couldn't register CAN device: %d\n", err);

		goto cleanup_free_candev;
	}

	FUNC5(netdev);

	/* Start USB dev only if we have successfully registered CAN device */
	err = FUNC9(priv);
	if (err) {
		if (err == -ENODEV)
			FUNC13(priv->netdev);

		FUNC12(netdev, "couldn't start device: %d\n", err);

		goto cleanup_unregister_candev;
	}

	FUNC4(&intf->dev, "Microchip CAN BUS Analyzer connected\n");

	return 0;

cleanup_unregister_candev:
	FUNC15(priv->netdev);

cleanup_free_candev:
	FUNC6(netdev);

	return err;
}