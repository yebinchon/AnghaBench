#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct kvaser_usb_tx_urb_context {size_t echo_index; scalar_t__ dlc; } ;
struct TYPE_15__ {int /*<<< orphan*/  restarts; } ;
struct TYPE_16__ {scalar_t__ state; TYPE_4__ can_stats; scalar_t__ restart_ms; } ;
struct kvaser_usb_net_priv {int /*<<< orphan*/  tx_contexts_lock; TYPE_6__* netdev; int /*<<< orphan*/  active_tx_contexts; TYPE_5__ can; struct kvaser_usb_tx_urb_context* tx_contexts; } ;
struct kvaser_usb {size_t nchannels; size_t max_tx_urbs; struct kvaser_usb_net_priv** nets; TYPE_3__* intf; } ;
struct TYPE_12__ {size_t channel; size_t tid; } ;
struct TYPE_13__ {TYPE_1__ tx_acknowledge_header; } ;
struct kvaser_cmd {TYPE_2__ u; } ;
struct can_frame {scalar_t__ can_dlc; int /*<<< orphan*/  can_id; } ;
struct TYPE_17__ {struct net_device_stats stats; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_ERR_RESTARTED ; 
 scalar_t__ CAN_STATE_BUS_OFF ; 
 scalar_t__ CAN_STATE_ERROR_ACTIVE ; 
 struct sk_buff* FUNC0 (TYPE_6__*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(const struct kvaser_usb *dev,
					   const struct kvaser_cmd *cmd)
{
	struct net_device_stats *stats;
	struct kvaser_usb_tx_urb_context *context;
	struct kvaser_usb_net_priv *priv;
	unsigned long flags;
	u8 channel, tid;

	channel = cmd->u.tx_acknowledge_header.channel;
	tid = cmd->u.tx_acknowledge_header.tid;

	if (channel >= dev->nchannels) {
		FUNC2(&dev->intf->dev,
			"Invalid channel number (%d)\n", channel);
		return;
	}

	priv = dev->nets[channel];

	if (!FUNC5(priv->netdev))
		return;

	stats = &priv->netdev->stats;

	context = &priv->tx_contexts[tid % dev->max_tx_urbs];

	/* Sometimes the state change doesn't come after a bus-off event */
	if (priv->can.restart_ms && priv->can.state >= CAN_STATE_BUS_OFF) {
		struct sk_buff *skb;
		struct can_frame *cf;

		skb = FUNC0(priv->netdev, &cf);
		if (skb) {
			cf->can_id |= CAN_ERR_RESTARTED;

			stats->rx_packets++;
			stats->rx_bytes += cf->can_dlc;
			FUNC6(skb);
		} else {
			FUNC3(priv->netdev,
				   "No memory left for err_skb\n");
		}

		priv->can.can_stats.restarts++;
		FUNC4(priv->netdev);

		priv->can.state = CAN_STATE_ERROR_ACTIVE;
	}

	stats->tx_packets++;
	stats->tx_bytes += context->dlc;

	FUNC8(&priv->tx_contexts_lock, flags);

	FUNC1(priv->netdev, context->echo_index);
	context->echo_index = dev->max_tx_urbs;
	--priv->active_tx_contexts;
	FUNC7(priv->netdev);

	FUNC9(&priv->tx_contexts_lock, flags);
}