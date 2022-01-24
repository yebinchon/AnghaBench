#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct pucan_rx_msg {int /*<<< orphan*/  d; int /*<<< orphan*/  can_id; int /*<<< orphan*/  client; int /*<<< orphan*/  flags; } ;
struct peak_canfd_priv {TYPE_1__* ndev; int /*<<< orphan*/  echo_lock; } ;
struct net_device_stats {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct canfd_frame {scalar_t__ len; int /*<<< orphan*/  data; int /*<<< orphan*/  can_id; int /*<<< orphan*/  flags; } ;
struct can_frame {int dummy; } ;
struct TYPE_5__ {struct net_device_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CANFD_BRS ; 
 int /*<<< orphan*/  CANFD_ESI ; 
 int /*<<< orphan*/  CAN_EFF_FLAG ; 
 int /*<<< orphan*/  CAN_RTR_FLAG ; 
 int ENOMEM ; 
 int const PUCAN_MSG_BITRATE_SWITCH ; 
 int const PUCAN_MSG_ERROR_STATE_IND ; 
 int const PUCAN_MSG_EXT_DATA_LEN ; 
 int const PUCAN_MSG_EXT_ID ; 
 int const PUCAN_MSG_LOOPED_BACK ; 
 int const PUCAN_MSG_RTR ; 
 int const PUCAN_MSG_SELF_RECEIVE ; 
 struct sk_buff* FUNC0 (TYPE_1__*,struct can_frame**) ; 
 struct sk_buff* FUNC1 (TYPE_1__*,struct canfd_frame**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct pucan_rx_msg*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct peak_canfd_priv *priv,
			       struct pucan_rx_msg *msg)
{
	struct net_device_stats *stats = &priv->ndev->stats;
	struct canfd_frame *cf;
	struct sk_buff *skb;
	const u16 rx_msg_flags = FUNC6(msg->flags);
	u8 cf_len;

	if (rx_msg_flags & PUCAN_MSG_EXT_DATA_LEN)
		cf_len = FUNC2(FUNC5(FUNC11(msg)));
	else
		cf_len = FUNC4(FUNC11(msg));

	/* if this frame is an echo, */
	if ((rx_msg_flags & PUCAN_MSG_LOOPED_BACK) &&
	    !(rx_msg_flags & PUCAN_MSG_SELF_RECEIVE)) {
		unsigned long flags;

		FUNC12(&priv->echo_lock, flags);
		FUNC3(priv->ndev, msg->client);

		/* count bytes of the echo instead of skb */
		stats->tx_bytes += cf_len;
		stats->tx_packets++;

		/* restart tx queue (a slot is free) */
		FUNC10(priv->ndev);

		FUNC13(&priv->echo_lock, flags);
		return 0;
	}

	/* otherwise, it should be pushed into rx fifo */
	if (rx_msg_flags & PUCAN_MSG_EXT_DATA_LEN) {
		/* CANFD frame case */
		skb = FUNC1(priv->ndev, &cf);
		if (!skb)
			return -ENOMEM;

		if (rx_msg_flags & PUCAN_MSG_BITRATE_SWITCH)
			cf->flags |= CANFD_BRS;

		if (rx_msg_flags & PUCAN_MSG_ERROR_STATE_IND)
			cf->flags |= CANFD_ESI;
	} else {
		/* CAN 2.0 frame case */
		skb = FUNC0(priv->ndev, (struct can_frame **)&cf);
		if (!skb)
			return -ENOMEM;
	}

	cf->can_id = FUNC7(msg->can_id);
	cf->len = cf_len;

	if (rx_msg_flags & PUCAN_MSG_EXT_ID)
		cf->can_id |= CAN_EFF_FLAG;

	if (rx_msg_flags & PUCAN_MSG_RTR)
		cf->can_id |= CAN_RTR_FLAG;
	else
		FUNC8(cf->data, msg->d, cf->len);

	stats->rx_bytes += cf->len;
	stats->rx_packets++;

	FUNC9(skb);

	return 0;
}