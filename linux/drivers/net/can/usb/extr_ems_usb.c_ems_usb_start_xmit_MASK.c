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
typedef  int /*<<< orphan*/  u8 ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct ems_usb {scalar_t__ free_slots; int /*<<< orphan*/  active_tx_urbs; int /*<<< orphan*/  udev; int /*<<< orphan*/  tx_submitted; struct ems_tx_urb_context* tx_contexts; } ;
struct ems_tx_urb_context {int echo_index; int dlc; struct ems_usb* dev; } ;
struct TYPE_3__ {int length; int /*<<< orphan*/ * msg; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {TYPE_1__ can_msg; } ;
struct ems_cpc_msg {void* length; TYPE_2__ msg; int /*<<< orphan*/  type; } ;
struct cpc_can_msg {int dummy; } ;
struct can_frame {int can_id; int can_dlc; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int CAN_ERR_MASK ; 
 int CAN_RTR_FLAG ; 
 void* CPC_CAN_MSG_MIN_SIZE ; 
 int /*<<< orphan*/  CPC_CMD_TYPE_CAN_FRAME ; 
 int /*<<< orphan*/  CPC_CMD_TYPE_EXT_CAN_FRAME ; 
 int /*<<< orphan*/  CPC_CMD_TYPE_EXT_RTR_FRAME ; 
 int /*<<< orphan*/  CPC_CMD_TYPE_RTR_FRAME ; 
 int CPC_HEADER_SIZE ; 
 int CPC_MSG_HEADER_LEN ; 
 scalar_t__ CPC_TX_QUEUE_TRIGGER_LOW ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_TX_URBS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  ems_usb_write_bulk_callback ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*) ; 
 struct ems_usb* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,struct ems_tx_urb_context*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct urb*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int FUNC22 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct urb*) ; 

__attribute__((used)) static netdev_tx_t FUNC24(struct sk_buff *skb, struct net_device *netdev)
{
	struct ems_usb *dev = FUNC9(netdev);
	struct ems_tx_urb_context *context = NULL;
	struct net_device_stats *stats = &netdev->stats;
	struct can_frame *cf = (struct can_frame *)skb->data;
	struct ems_cpc_msg *msg;
	struct urb *urb;
	u8 *buf;
	int i, err;
	size_t size = CPC_HEADER_SIZE + CPC_MSG_HEADER_LEN
			+ sizeof(struct cpc_can_msg);

	if (FUNC3(netdev, skb))
		return NETDEV_TX_OK;

	/* create a URB, and a buffer for it, and copy the data to the URB */
	urb = FUNC16(0, GFP_ATOMIC);
	if (!urb)
		goto nomem;

	buf = FUNC15(dev->udev, size, GFP_ATOMIC, &urb->transfer_dma);
	if (!buf) {
		FUNC8(netdev, "No memory left for USB buffer\n");
		FUNC20(urb);
		goto nomem;
	}

	msg = (struct ems_cpc_msg *)&buf[CPC_HEADER_SIZE];

	msg->msg.can_msg.id = FUNC6(cf->can_id & CAN_ERR_MASK);
	msg->msg.can_msg.length = cf->can_dlc;

	if (cf->can_id & CAN_RTR_FLAG) {
		msg->type = cf->can_id & CAN_EFF_FLAG ?
			CPC_CMD_TYPE_EXT_RTR_FRAME : CPC_CMD_TYPE_RTR_FRAME;

		msg->length = CPC_CAN_MSG_MIN_SIZE;
	} else {
		msg->type = cf->can_id & CAN_EFF_FLAG ?
			CPC_CMD_TYPE_EXT_CAN_FRAME : CPC_CMD_TYPE_CAN_FRAME;

		for (i = 0; i < cf->can_dlc; i++)
			msg->msg.can_msg.msg[i] = cf->data[i];

		msg->length = CPC_CAN_MSG_MIN_SIZE + cf->can_dlc;
	}

	for (i = 0; i < MAX_TX_URBS; i++) {
		if (dev->tx_contexts[i].echo_index == MAX_TX_URBS) {
			context = &dev->tx_contexts[i];
			break;
		}
	}

	/*
	 * May never happen! When this happens we'd more URBs in flight as
	 * allowed (MAX_TX_URBS).
	 */
	if (!context) {
		FUNC19(dev->udev, size, buf, urb->transfer_dma);
		FUNC20(urb);

		FUNC10(netdev, "couldn't find free context\n");

		return NETDEV_TX_BUSY;
	}

	context->dev = dev;
	context->echo_index = i;
	context->dlc = cf->can_dlc;

	FUNC18(urb, dev->udev, FUNC21(dev->udev, 2), buf,
			  size, ems_usb_write_bulk_callback, context);
	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	FUNC17(urb, &dev->tx_submitted);

	FUNC5(skb, netdev, context->echo_index);

	FUNC1(&dev->active_tx_urbs);

	err = FUNC22(urb, GFP_ATOMIC);
	if (FUNC14(err)) {
		FUNC4(netdev, context->echo_index);

		FUNC23(urb);
		FUNC19(dev->udev, size, buf, urb->transfer_dma);
		FUNC7(skb);

		FUNC0(&dev->active_tx_urbs);

		if (err == -ENODEV) {
			FUNC11(netdev);
		} else {
			FUNC10(netdev, "failed tx_urb %d\n", err);

			stats->tx_dropped++;
		}
	} else {
		FUNC13(netdev);

		/* Slow down tx path */
		if (FUNC2(&dev->active_tx_urbs) >= MAX_TX_URBS ||
		    dev->free_slots < CPC_TX_QUEUE_TRIGGER_LOW) {
			FUNC12(netdev);
		}
	}

	/*
	 * Release our reference to this URB, the USB core will eventually free
	 * it entirely.
	 */
	FUNC20(urb);

	return NETDEV_TX_OK;

nomem:
	FUNC7(skb);
	stats->tx_dropped++;

	return NETDEV_TX_OK;
}