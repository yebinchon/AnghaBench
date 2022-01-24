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
struct xgbe_packet_data {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rdesc_count; } ;
struct xgbe_ring {struct xgbe_packet_data packet_data; } ;
struct xgbe_desc_if {int /*<<< orphan*/  (* map_tx_skb ) (struct xgbe_channel*,struct sk_buff*) ;} ;
struct xgbe_hw_if {int /*<<< orphan*/  (* dev_xmit ) (struct xgbe_channel*) ;} ;
struct xgbe_prv_data {struct xgbe_channel** channel; struct xgbe_desc_if desc_if; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {struct xgbe_ring* tx_ring; int /*<<< orphan*/  queue_index; } ;
struct sk_buff {scalar_t__ len; size_t queue_mapping; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ NETDEV_TX_OK ; 
 int /*<<< orphan*/  XGBE_TX_MAX_DESCS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_packet_data*,int /*<<< orphan*/ ,int) ; 
 struct netdev_queue* FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct xgbe_prv_data* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC7 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_channel*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_channel*) ; 
 int /*<<< orphan*/  tx_err ; 
 scalar_t__ FUNC10 (struct xgbe_channel*,struct xgbe_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xgbe_prv_data*,struct xgbe_ring*,struct sk_buff*,struct xgbe_packet_data*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,struct xgbe_packet_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct xgbe_prv_data*,struct sk_buff*,struct xgbe_packet_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct xgbe_packet_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,struct sk_buff*,int) ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct sk_buff *skb, struct net_device *netdev)
{
	struct xgbe_prv_data *pdata = FUNC4(netdev);
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	struct xgbe_desc_if *desc_if = &pdata->desc_if;
	struct xgbe_channel *channel;
	struct xgbe_ring *ring;
	struct xgbe_packet_data *packet;
	struct netdev_queue *txq;
	netdev_tx_t ret;

	FUNC0("-->xgbe_xmit: skb->len = %d\n", skb->len);

	channel = pdata->channel[skb->queue_mapping];
	txq = FUNC3(netdev, channel->queue_index);
	ring = channel->tx_ring;
	packet = &ring->packet_data;

	ret = NETDEV_TX_OK;

	if (skb->len == 0) {
		FUNC6(pdata, tx_err, netdev,
			  "empty skb received from stack\n");
		FUNC1(skb);
		goto tx_netdev_return;
	}

	/* Calculate preliminary packet info */
	FUNC2(packet, 0, sizeof(*packet));
	FUNC11(pdata, ring, skb, packet);

	/* Check that there are enough descriptors available */
	ret = FUNC10(channel, ring, packet->rdesc_count);
	if (ret)
		goto tx_netdev_return;

	ret = FUNC12(skb, packet);
	if (ret) {
		FUNC6(pdata, tx_err, netdev,
			  "error processing TSO packet\n");
		FUNC1(skb);
		goto tx_netdev_return;
	}
	FUNC14(skb, packet);

	if (!desc_if->map_tx_skb(channel, skb)) {
		FUNC1(skb);
		goto tx_netdev_return;
	}

	FUNC13(pdata, skb, packet);

	/* Report on the actual number of bytes (to be) sent */
	FUNC5(txq, packet->tx_bytes);

	/* Configure required descriptor fields for transmission */
	hw_if->dev_xmit(channel);

	if (FUNC7(pdata))
		FUNC15(netdev, skb, true);

	/* Stop the queue in advance if there may not be enough descriptors */
	FUNC10(channel, ring, XGBE_TX_MAX_DESCS);

	ret = NETDEV_TX_OK;

tx_netdev_return:
	return ret;
}