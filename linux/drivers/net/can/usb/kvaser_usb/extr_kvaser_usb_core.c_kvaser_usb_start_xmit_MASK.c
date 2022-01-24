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
struct urb {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct kvaser_usb_tx_urb_context {unsigned int echo_index; struct kvaser_usb_net_priv* priv; int /*<<< orphan*/  dlc; } ;
struct kvaser_usb_net_priv {int active_tx_contexts; int /*<<< orphan*/  tx_contexts_lock; int /*<<< orphan*/  tx_submitted; struct kvaser_usb_tx_urb_context* tx_contexts; struct kvaser_usb* dev; } ;
struct kvaser_usb {unsigned int max_tx_urbs; TYPE_2__* bulk_out; int /*<<< orphan*/  udev; TYPE_1__* ops; } ;
typedef  int netdev_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_3__ {void* (* dev_frame_to_cmd ) (struct kvaser_usb_net_priv*,struct sk_buff*,int /*<<< orphan*/ *,int*,unsigned int) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  kvaser_usb_write_bulk_callback ; 
 struct kvaser_usb_net_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC12 (struct kvaser_usb_net_priv*,struct sk_buff*,int /*<<< orphan*/ *,int*,unsigned int) ; 
 scalar_t__ FUNC13 (int) ; 
 struct urb* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct kvaser_usb_tx_urb_context*) ; 
 int /*<<< orphan*/  FUNC17 (struct urb*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct urb*) ; 

__attribute__((used)) static netdev_tx_t FUNC21(struct sk_buff *skb,
					 struct net_device *netdev)
{
	struct kvaser_usb_net_priv *priv = FUNC5(netdev);
	struct kvaser_usb *dev = priv->dev;
	struct net_device_stats *stats = &netdev->stats;
	struct kvaser_usb_tx_urb_context *context = NULL;
	struct urb *urb;
	void *buf;
	int cmd_len = 0;
	int err, ret = NETDEV_TX_OK;
	unsigned int i;
	unsigned long flags;

	if (FUNC0(netdev, skb))
		return NETDEV_TX_OK;

	urb = FUNC14(0, GFP_ATOMIC);
	if (!urb) {
		stats->tx_dropped++;
		FUNC3(skb);
		return NETDEV_TX_OK;
	}

	FUNC10(&priv->tx_contexts_lock, flags);
	for (i = 0; i < dev->max_tx_urbs; i++) {
		if (priv->tx_contexts[i].echo_index == dev->max_tx_urbs) {
			context = &priv->tx_contexts[i];

			context->echo_index = i;
			++priv->active_tx_contexts;
			if (priv->active_tx_contexts >= (int)dev->max_tx_urbs)
				FUNC8(netdev);

			break;
		}
	}
	FUNC11(&priv->tx_contexts_lock, flags);

	/* This should never happen; it implies a flow control bug */
	if (!context) {
		FUNC6(netdev, "cannot find free context\n");

		ret = NETDEV_TX_BUSY;
		goto freeurb;
	}

	buf = dev->ops->dev_frame_to_cmd(priv, skb, &context->dlc, &cmd_len,
					 context->echo_index);
	if (!buf) {
		stats->tx_dropped++;
		FUNC3(skb);
		FUNC10(&priv->tx_contexts_lock, flags);

		context->echo_index = dev->max_tx_urbs;
		--priv->active_tx_contexts;
		FUNC9(netdev);

		FUNC11(&priv->tx_contexts_lock, flags);
		goto freeurb;
	}

	context->priv = priv;

	FUNC2(skb, netdev, context->echo_index);

	FUNC16(urb, dev->udev,
			  FUNC18(dev->udev,
					  dev->bulk_out->bEndpointAddress),
			  buf, cmd_len, kvaser_usb_write_bulk_callback,
			  context);
	FUNC15(urb, &priv->tx_submitted);

	err = FUNC19(urb, GFP_ATOMIC);
	if (FUNC13(err)) {
		FUNC10(&priv->tx_contexts_lock, flags);

		FUNC1(netdev, context->echo_index);
		context->echo_index = dev->max_tx_urbs;
		--priv->active_tx_contexts;
		FUNC9(netdev);

		FUNC11(&priv->tx_contexts_lock, flags);

		FUNC20(urb);
		FUNC4(buf);

		stats->tx_dropped++;

		if (err == -ENODEV)
			FUNC7(netdev);
		else
			FUNC6(netdev, "Failed tx_urb %d\n", err);

		goto freeurb;
	}

	ret = NETDEV_TX_OK;

freeurb:
	FUNC17(urb);
	return ret;
}