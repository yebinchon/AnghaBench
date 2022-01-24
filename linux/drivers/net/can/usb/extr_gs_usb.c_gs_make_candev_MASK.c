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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  flags; int /*<<< orphan*/ * netdev_ops; } ;
struct gs_device_config {int sw_version; } ;
struct gs_device_bt_const {int feature; int /*<<< orphan*/  fclk_can; int /*<<< orphan*/  brp_inc; int /*<<< orphan*/  brp_max; int /*<<< orphan*/  brp_min; int /*<<< orphan*/  sjw_max; int /*<<< orphan*/  tseg2_max; int /*<<< orphan*/  tseg2_min; int /*<<< orphan*/  tseg1_max; int /*<<< orphan*/  tseg1_min; } ;
struct TYPE_6__ {int /*<<< orphan*/  freq; } ;
struct TYPE_8__ {int /*<<< orphan*/  ctrlmode_supported; int /*<<< orphan*/  do_set_bittiming; TYPE_3__* bittiming_const; TYPE_2__ clock; int /*<<< orphan*/  state; } ;
struct TYPE_7__ {int /*<<< orphan*/  brp_inc; int /*<<< orphan*/  brp_max; int /*<<< orphan*/  brp_min; int /*<<< orphan*/  sjw_max; int /*<<< orphan*/  tseg2_max; int /*<<< orphan*/  tseg2_min; int /*<<< orphan*/  tseg1_max; int /*<<< orphan*/  tseg1_min; int /*<<< orphan*/  name; } ;
struct gs_can {unsigned int channel; struct net_device* netdev; TYPE_4__ can; TYPE_3__ bt_const; TYPE_1__* tx_context; int /*<<< orphan*/  tx_ctx_lock; int /*<<< orphan*/  active_tx_urbs; int /*<<< orphan*/  tx_submitted; struct usb_interface* iface; int /*<<< orphan*/  udev; } ;
struct TYPE_5__ {int echo_id; struct gs_can* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_CTRLMODE_3_SAMPLES ; 
 int /*<<< orphan*/  CAN_CTRLMODE_LISTENONLY ; 
 int /*<<< orphan*/  CAN_CTRLMODE_LOOPBACK ; 
 int /*<<< orphan*/  CAN_CTRLMODE_ONE_SHOT ; 
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int ENOMEM ; 
 struct gs_can* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GS_CAN_FEATURE_IDENTIFY ; 
 int GS_CAN_FEATURE_LISTEN_ONLY ; 
 int GS_CAN_FEATURE_LOOP_BACK ; 
 int GS_CAN_FEATURE_ONE_SHOT ; 
 int GS_CAN_FEATURE_TRIPLE_SAMPLE ; 
 int GS_MAX_TX_URBS ; 
 int /*<<< orphan*/  GS_USB_BREQ_BT_CONST ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 struct net_device* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  gs_usb_ethtool_ops ; 
 int /*<<< orphan*/  gs_usb_netdev_ops ; 
 int /*<<< orphan*/  gs_usb_set_bittiming ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct gs_device_bt_const*) ; 
 struct gs_device_bt_const* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct gs_can* FUNC10 (struct net_device*) ; 
 int FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,struct gs_device_bt_const*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gs_can *FUNC16(unsigned int channel,
				     struct usb_interface *intf,
				     struct gs_device_config *dconf)
{
	struct gs_can *dev;
	struct net_device *netdev;
	int rc;
	struct gs_device_bt_const *bt_const;

	bt_const = FUNC9(sizeof(*bt_const), GFP_KERNEL);
	if (!bt_const)
		return FUNC0(-ENOMEM);

	/* fetch bit timing constants */
	rc = FUNC14(FUNC7(intf),
			     FUNC15(FUNC7(intf), 0),
			     GS_USB_BREQ_BT_CONST,
			     USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
			     channel,
			     0,
			     bt_const,
			     sizeof(*bt_const),
			     1000);

	if (rc < 0) {
		FUNC4(&intf->dev,
			"Couldn't get bit timing const for channel (err=%d)\n",
			rc);
		FUNC8(bt_const);
		return FUNC0(rc);
	}

	/* create netdev */
	netdev = FUNC2(sizeof(struct gs_can), GS_MAX_TX_URBS);
	if (!netdev) {
		FUNC4(&intf->dev, "Couldn't allocate candev\n");
		FUNC8(bt_const);
		return FUNC0(-ENOMEM);
	}

	dev = FUNC10(netdev);

	netdev->netdev_ops = &gs_usb_netdev_ops;

	netdev->flags |= IFF_ECHO; /* we support full roundtrip echo */

	/* dev settup */
	FUNC13(dev->bt_const.name, "gs_usb");
	dev->bt_const.tseg1_min = bt_const->tseg1_min;
	dev->bt_const.tseg1_max = bt_const->tseg1_max;
	dev->bt_const.tseg2_min = bt_const->tseg2_min;
	dev->bt_const.tseg2_max = bt_const->tseg2_max;
	dev->bt_const.sjw_max = bt_const->sjw_max;
	dev->bt_const.brp_min = bt_const->brp_min;
	dev->bt_const.brp_max = bt_const->brp_max;
	dev->bt_const.brp_inc = bt_const->brp_inc;

	dev->udev = FUNC7(intf);
	dev->iface = intf;
	dev->netdev = netdev;
	dev->channel = channel;

	FUNC6(&dev->tx_submitted);
	FUNC3(&dev->active_tx_urbs, 0);
	FUNC12(&dev->tx_ctx_lock);
	for (rc = 0; rc < GS_MAX_TX_URBS; rc++) {
		dev->tx_context[rc].dev = dev;
		dev->tx_context[rc].echo_id = GS_MAX_TX_URBS;
	}

	/* can settup */
	dev->can.state = CAN_STATE_STOPPED;
	dev->can.clock.freq = bt_const->fclk_can;
	dev->can.bittiming_const = &dev->bt_const;
	dev->can.do_set_bittiming = gs_usb_set_bittiming;

	dev->can.ctrlmode_supported = 0;

	if (bt_const->feature & GS_CAN_FEATURE_LISTEN_ONLY)
		dev->can.ctrlmode_supported |= CAN_CTRLMODE_LISTENONLY;

	if (bt_const->feature & GS_CAN_FEATURE_LOOP_BACK)
		dev->can.ctrlmode_supported |= CAN_CTRLMODE_LOOPBACK;

	if (bt_const->feature & GS_CAN_FEATURE_TRIPLE_SAMPLE)
		dev->can.ctrlmode_supported |= CAN_CTRLMODE_3_SAMPLES;

	if (bt_const->feature & GS_CAN_FEATURE_ONE_SHOT)
		dev->can.ctrlmode_supported |= CAN_CTRLMODE_ONE_SHOT;

	FUNC1(netdev, &intf->dev);

	if (dconf->sw_version > 1)
		if (bt_const->feature & GS_CAN_FEATURE_IDENTIFY)
			netdev->ethtool_ops = &gs_usb_ethtool_ops;

	FUNC8(bt_const);

	rc = FUNC11(dev->netdev);
	if (rc) {
		FUNC5(dev->netdev);
		FUNC4(&intf->dev, "Couldn't register candev (err=%d)\n", rc);
		return FUNC0(rc);
	}

	return dev;
}