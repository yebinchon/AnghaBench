#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct net_device {int /*<<< orphan*/  flags; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  freq; } ;
struct TYPE_5__ {int /*<<< orphan*/  ctrlmode_supported; int /*<<< orphan*/  do_set_mode; int /*<<< orphan*/  do_set_bittiming; int /*<<< orphan*/ * bittiming_const; TYPE_1__ clock; int /*<<< orphan*/  state; } ;
struct ems_usb {int /*<<< orphan*/  intr_urb; void* intr_in_buffer; void* tx_msg_buffer; int /*<<< orphan*/  active_params; TYPE_3__* tx_contexts; int /*<<< orphan*/  active_tx_urbs; int /*<<< orphan*/  tx_submitted; int /*<<< orphan*/  rx_submitted; TYPE_2__ can; struct net_device* netdev; int /*<<< orphan*/  udev; } ;
struct ems_cpc_msg {int dummy; } ;
struct TYPE_6__ {int echo_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_CTRLMODE_3_SAMPLES ; 
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 scalar_t__ CPC_HEADER_SIZE ; 
 int /*<<< orphan*/  EMS_USB_ARM7_CLOCK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 scalar_t__ INTR_IN_BUFFER_SIZE ; 
 int MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ems_usb_bittiming_const ; 
 int FUNC4 (struct ems_usb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ems_usb_netdev_ops ; 
 int /*<<< orphan*/  ems_usb_set_bittiming ; 
 int /*<<< orphan*/  ems_usb_set_mode ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,int) ; 
 struct ems_usb* FUNC12 (struct net_device*) ; 
 int FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,struct ems_usb*) ; 

__attribute__((used)) static int FUNC17(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct net_device *netdev;
	struct ems_usb *dev;
	int i, err = -ENOMEM;

	netdev = FUNC1(sizeof(struct ems_usb), MAX_TX_URBS);
	if (!netdev) {
		FUNC3(&intf->dev, "ems_usb: Couldn't alloc candev\n");
		return -ENOMEM;
	}

	dev = FUNC12(netdev);

	dev->udev = FUNC8(intf);
	dev->netdev = netdev;

	dev->can.state = CAN_STATE_STOPPED;
	dev->can.clock.freq = EMS_USB_ARM7_CLOCK;
	dev->can.bittiming_const = &ems_usb_bittiming_const;
	dev->can.do_set_bittiming = ems_usb_set_bittiming;
	dev->can.do_set_mode = ems_usb_set_mode;
	dev->can.ctrlmode_supported = CAN_CTRLMODE_3_SAMPLES;

	netdev->netdev_ops = &ems_usb_netdev_ops;

	netdev->flags |= IFF_ECHO; /* we support local echo */

	FUNC7(&dev->rx_submitted);

	FUNC7(&dev->tx_submitted);
	FUNC2(&dev->active_tx_urbs, 0);

	for (i = 0; i < MAX_TX_URBS; i++)
		dev->tx_contexts[i].echo_index = MAX_TX_URBS;

	dev->intr_urb = FUNC14(0, GFP_KERNEL);
	if (!dev->intr_urb)
		goto cleanup_candev;

	dev->intr_in_buffer = FUNC10(INTR_IN_BUFFER_SIZE, GFP_KERNEL);
	if (!dev->intr_in_buffer)
		goto cleanup_intr_urb;

	dev->tx_msg_buffer = FUNC10(CPC_HEADER_SIZE +
				     sizeof(struct ems_cpc_msg), GFP_KERNEL);
	if (!dev->tx_msg_buffer)
		goto cleanup_intr_in_buffer;

	FUNC16(intf, dev);

	FUNC0(netdev, &intf->dev);

	FUNC6(&dev->active_params);

	err = FUNC4(dev, &dev->active_params);
	if (err) {
		FUNC11(netdev, "couldn't initialize controller: %d\n", err);
		goto cleanup_tx_msg_buffer;
	}

	err = FUNC13(netdev);
	if (err) {
		FUNC11(netdev, "couldn't register CAN device: %d\n", err);
		goto cleanup_tx_msg_buffer;
	}

	return 0;

cleanup_tx_msg_buffer:
	FUNC9(dev->tx_msg_buffer);

cleanup_intr_in_buffer:
	FUNC9(dev->intr_in_buffer);

cleanup_intr_urb:
	FUNC15(dev->intr_urb);

cleanup_candev:
	FUNC5(netdev);

	return err;
}