#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usb_8dev_tx_urb_context {int echo_index; int /*<<< orphan*/  dlc; struct usb_8dev_priv* priv; } ;
struct usb_8dev_tx_msg {int flags; int /*<<< orphan*/  end; int /*<<< orphan*/  data; int /*<<< orphan*/  dlc; int /*<<< orphan*/  id; int /*<<< orphan*/  begin; } ;
struct usb_8dev_priv {int /*<<< orphan*/  active_tx_urbs; int /*<<< orphan*/  udev; int /*<<< orphan*/  tx_submitted; struct usb_8dev_tx_urb_context* tx_contexts; } ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int can_id; int /*<<< orphan*/  can_dlc; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int CAN_ERR_MASK ; 
 int CAN_RTR_FLAG ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_TX_URBS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  USB_8DEV_DATA_END ; 
 int /*<<< orphan*/  USB_8DEV_DATA_START ; 
 int /*<<< orphan*/  USB_8DEV_ENDP_DATA_TX ; 
 int USB_8DEV_EXTID ; 
 int USB_8DEV_RTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 struct usb_8dev_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  usb_8dev_write_bulk_callback ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,struct usb_8dev_tx_urb_context*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct urb*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct urb*) ; 

__attribute__((used)) static netdev_tx_t FUNC25(struct sk_buff *skb,
				      struct net_device *netdev)
{
	struct usb_8dev_priv *priv = FUNC11(netdev);
	struct net_device_stats *stats = &netdev->stats;
	struct can_frame *cf = (struct can_frame *) skb->data;
	struct usb_8dev_tx_msg *msg;
	struct urb *urb;
	struct usb_8dev_tx_urb_context *context = NULL;
	u8 *buf;
	int i, err;
	size_t size = sizeof(struct usb_8dev_tx_msg);

	if (FUNC3(netdev, skb))
		return NETDEV_TX_OK;

	/* create a URB, and a buffer for it, and copy the data to the URB */
	urb = FUNC17(0, GFP_ATOMIC);
	if (!urb)
		goto nomem;

	buf = FUNC16(priv->udev, size, GFP_ATOMIC,
				 &urb->transfer_dma);
	if (!buf) {
		FUNC10(netdev, "No memory left for USB buffer\n");
		goto nomembuf;
	}

	FUNC9(buf, 0, size);

	msg = (struct usb_8dev_tx_msg *)buf;
	msg->begin = USB_8DEV_DATA_START;
	msg->flags = 0x00;

	if (cf->can_id & CAN_RTR_FLAG)
		msg->flags |= USB_8DEV_RTR;

	if (cf->can_id & CAN_EFF_FLAG)
		msg->flags |= USB_8DEV_EXTID;

	msg->id = FUNC6(cf->can_id & CAN_ERR_MASK);
	msg->dlc = cf->can_dlc;
	FUNC8(msg->data, cf->data, cf->can_dlc);
	msg->end = USB_8DEV_DATA_END;

	for (i = 0; i < MAX_TX_URBS; i++) {
		if (priv->tx_contexts[i].echo_index == MAX_TX_URBS) {
			context = &priv->tx_contexts[i];
			break;
		}
	}

	/* May never happen! When this happens we'd more URBs in flight as
	 * allowed (MAX_TX_URBS).
	 */
	if (!context)
		goto nofreecontext;

	context->priv = priv;
	context->echo_index = i;
	context->dlc = cf->can_dlc;

	FUNC19(urb, priv->udev,
			  FUNC22(priv->udev, USB_8DEV_ENDP_DATA_TX),
			  buf, size, usb_8dev_write_bulk_callback, context);
	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	FUNC18(urb, &priv->tx_submitted);

	FUNC5(skb, netdev, context->echo_index);

	FUNC1(&priv->active_tx_urbs);

	err = FUNC23(urb, GFP_ATOMIC);
	if (FUNC15(err))
		goto failed;
	else if (FUNC2(&priv->active_tx_urbs) >= MAX_TX_URBS)
		/* Slow down tx path */
		FUNC14(netdev);

	/* Release our reference to this URB, the USB core will eventually free
	 * it entirely.
	 */
	FUNC21(urb);

	return NETDEV_TX_OK;

nofreecontext:
	FUNC20(priv->udev, size, buf, urb->transfer_dma);
	FUNC21(urb);

	FUNC12(netdev, "couldn't find free context");

	return NETDEV_TX_BUSY;

failed:
	FUNC4(netdev, context->echo_index);

	FUNC24(urb);
	FUNC20(priv->udev, size, buf, urb->transfer_dma);

	FUNC0(&priv->active_tx_urbs);

	if (err == -ENODEV)
		FUNC13(netdev);
	else
		FUNC12(netdev, "failed tx_urb %d\n", err);

nomembuf:
	FUNC21(urb);

nomem:
	FUNC7(skb);
	stats->tx_dropped++;

	return NETDEV_TX_OK;
}