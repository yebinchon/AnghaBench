#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct kvaser_usb_net_priv {TYPE_2__* netdev; } ;
struct kvaser_usb {int /*<<< orphan*/  cfg; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  data; int /*<<< orphan*/  dlc; int /*<<< orphan*/  id; int /*<<< orphan*/  err_frame_data; } ;
struct kvaser_cmd {TYPE_1__ rx_can; } ;
struct can_frame {int can_id; scalar_t__ can_dlc; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_5__ {struct net_device_stats stats; } ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int CAN_EFF_MASK ; 
 int CAN_RTR_FLAG ; 
 int CAN_SFF_MASK ; 
 int KVASER_USB_HYDRA_CF_FLAG_ERROR_FRAME ; 
 int KVASER_USB_HYDRA_CF_FLAG_OVERRUN ; 
 int KVASER_USB_HYDRA_CF_FLAG_REMOTE_FRAME ; 
 int KVASER_USB_HYDRA_EXTENDED_FRAME_ID ; 
 struct sk_buff* FUNC0 (TYPE_2__*,struct can_frame**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvaser_usb_net_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kvaser_cmd const*) ; 
 struct kvaser_usb_net_priv* FUNC5 (struct kvaser_usb const*,struct kvaser_cmd const*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct skb_shared_hwtstamps* FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC10(const struct kvaser_usb *dev,
					const struct kvaser_cmd *cmd)
{
	struct kvaser_usb_net_priv *priv = NULL;
	struct can_frame *cf;
	struct sk_buff *skb;
	struct skb_shared_hwtstamps *shhwtstamps;
	struct net_device_stats *stats;
	u8 flags;
	ktime_t hwtstamp;

	priv = FUNC5(dev, cmd);
	if (!priv)
		return;

	stats = &priv->netdev->stats;

	flags = cmd->rx_can.flags;
	hwtstamp = FUNC4(dev->cfg, cmd);

	if (flags & KVASER_USB_HYDRA_CF_FLAG_ERROR_FRAME) {
		FUNC3(priv, &cmd->rx_can.err_frame_data,
					     hwtstamp);
		return;
	}

	skb = FUNC0(priv->netdev, &cf);
	if (!skb) {
		stats->rx_dropped++;
		return;
	}

	shhwtstamps = FUNC9(skb);
	shhwtstamps->hwtstamp = hwtstamp;

	cf->can_id = FUNC6(cmd->rx_can.id);

	if (cf->can_id &  KVASER_USB_HYDRA_EXTENDED_FRAME_ID) {
		cf->can_id &= CAN_EFF_MASK;
		cf->can_id |= CAN_EFF_FLAG;
	} else {
		cf->can_id &= CAN_SFF_MASK;
	}

	if (flags & KVASER_USB_HYDRA_CF_FLAG_OVERRUN)
		FUNC2(priv->netdev);

	cf->can_dlc = FUNC1(cmd->rx_can.dlc);

	if (flags & KVASER_USB_HYDRA_CF_FLAG_REMOTE_FRAME)
		cf->can_id |= CAN_RTR_FLAG;
	else
		FUNC7(cf->data, cmd->rx_can.data, cf->can_dlc);

	stats->rx_packets++;
	stats->rx_bytes += cf->can_dlc;
	FUNC8(skb);
}