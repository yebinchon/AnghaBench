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
typedef  int /*<<< orphan*/  u8 ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct esd_usb2_net_priv {int /*<<< orphan*/  active_tx_jobs; int /*<<< orphan*/  tx_submitted; struct esd_tx_urb_context* tx_contexts; int /*<<< orphan*/  index; struct esd_usb2* usb2; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {int dlc; int hnd; int /*<<< orphan*/ * data; int /*<<< orphan*/  id; int /*<<< orphan*/  net; } ;
struct TYPE_6__ {TYPE_2__ hdr; TYPE_1__ tx; } ;
struct esd_usb2_msg {TYPE_3__ msg; } ;
struct esd_usb2 {int /*<<< orphan*/  udev; } ;
struct esd_tx_urb_context {int echo_index; int dlc; struct esd_usb2_net_priv* priv; } ;
struct can_frame {int can_dlc; int can_id; int /*<<< orphan*/ * data; } ;
typedef  int netdev_tx_t ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int CAN_ERR_MASK ; 
 int CAN_RTR_FLAG ; 
 int /*<<< orphan*/  CMD_CAN_TX ; 
 int ENODEV ; 
 int ESD_EXTID ; 
 int ESD_RTR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_TX_URBS ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  esd_usb2_write_bulk_callback ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*) ; 
 struct esd_usb2_net_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct esd_tx_urb_context*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct urb*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int FUNC21 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct urb*) ; 

__attribute__((used)) static netdev_tx_t FUNC23(struct sk_buff *skb,
				      struct net_device *netdev)
{
	struct esd_usb2_net_priv *priv = FUNC9(netdev);
	struct esd_usb2 *dev = priv->usb2;
	struct esd_tx_urb_context *context = NULL;
	struct net_device_stats *stats = &netdev->stats;
	struct can_frame *cf = (struct can_frame *)skb->data;
	struct esd_usb2_msg *msg;
	struct urb *urb;
	u8 *buf;
	int i, err;
	int ret = NETDEV_TX_OK;
	size_t size = sizeof(struct esd_usb2_msg);

	if (FUNC3(netdev, skb))
		return NETDEV_TX_OK;

	/* create a URB, and a buffer for it, and copy the data to the URB */
	urb = FUNC15(0, GFP_ATOMIC);
	if (!urb) {
		stats->tx_dropped++;
		FUNC7(skb);
		goto nourbmem;
	}

	buf = FUNC14(dev->udev, size, GFP_ATOMIC,
				 &urb->transfer_dma);
	if (!buf) {
		FUNC8(netdev, "No memory left for USB buffer\n");
		stats->tx_dropped++;
		FUNC7(skb);
		goto nobufmem;
	}

	msg = (struct esd_usb2_msg *)buf;

	msg->msg.hdr.len = 3; /* minimal length */
	msg->msg.hdr.cmd = CMD_CAN_TX;
	msg->msg.tx.net = priv->index;
	msg->msg.tx.dlc = cf->can_dlc;
	msg->msg.tx.id = FUNC6(cf->can_id & CAN_ERR_MASK);

	if (cf->can_id & CAN_RTR_FLAG)
		msg->msg.tx.dlc |= ESD_RTR;

	if (cf->can_id & CAN_EFF_FLAG)
		msg->msg.tx.id |= FUNC6(ESD_EXTID);

	for (i = 0; i < cf->can_dlc; i++)
		msg->msg.tx.data[i] = cf->data[i];

	msg->msg.hdr.len += (cf->can_dlc + 3) >> 2;

	for (i = 0; i < MAX_TX_URBS; i++) {
		if (priv->tx_contexts[i].echo_index == MAX_TX_URBS) {
			context = &priv->tx_contexts[i];
			break;
		}
	}

	/*
	 * This may never happen.
	 */
	if (!context) {
		FUNC10(netdev, "couldn't find free context\n");
		ret = NETDEV_TX_BUSY;
		goto releasebuf;
	}

	context->priv = priv;
	context->echo_index = i;
	context->dlc = cf->can_dlc;

	/* hnd must not be 0 - MSB is stripped in txdone handling */
	msg->msg.tx.hnd = 0x80000000 | i; /* returned in TX done message */

	FUNC17(urb, dev->udev, FUNC20(dev->udev, 2), buf,
			  msg->msg.hdr.len << 2,
			  esd_usb2_write_bulk_callback, context);

	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	FUNC16(urb, &priv->tx_submitted);

	FUNC5(skb, netdev, context->echo_index);

	FUNC1(&priv->active_tx_jobs);

	/* Slow down tx path */
	if (FUNC2(&priv->active_tx_jobs) >= MAX_TX_URBS)
		FUNC12(netdev);

	err = FUNC21(urb, GFP_ATOMIC);
	if (err) {
		FUNC4(netdev, context->echo_index);

		FUNC0(&priv->active_tx_jobs);
		FUNC22(urb);

		stats->tx_dropped++;

		if (err == -ENODEV)
			FUNC11(netdev);
		else
			FUNC10(netdev, "failed tx_urb %d\n", err);

		goto releasebuf;
	}

	FUNC13(netdev);

	/*
	 * Release our reference to this URB, the USB core will eventually free
	 * it entirely.
	 */
	FUNC19(urb);

	return NETDEV_TX_OK;

releasebuf:
	FUNC18(dev->udev, size, buf, urb->transfer_dma);

nobufmem:
	FUNC19(urb);

nourbmem:
	return ret;
}