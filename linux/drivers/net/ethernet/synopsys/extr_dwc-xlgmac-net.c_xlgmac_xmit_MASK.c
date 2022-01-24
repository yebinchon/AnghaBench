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
struct xlgmac_pkt_info {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  desc_count; } ;
struct xlgmac_ring {struct xlgmac_pkt_info pkt_info; } ;
struct xlgmac_hw_ops {int /*<<< orphan*/  (* dev_xmit ) (struct xlgmac_channel*) ;} ;
struct xlgmac_desc_ops {int /*<<< orphan*/  (* map_tx_skb ) (struct xlgmac_channel*,struct sk_buff*) ;} ;
struct xlgmac_pdata {struct xlgmac_channel* channel_head; struct xlgmac_hw_ops hw_ops; struct xlgmac_desc_ops desc_ops; } ;
struct xlgmac_channel {struct xlgmac_ring* tx_ring; int /*<<< orphan*/  queue_index; } ;
struct sk_buff {scalar_t__ len; int queue_mapping; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  XLGMAC_TX_MAX_DESC_NR ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_pkt_info*,int /*<<< orphan*/ ,int) ; 
 struct netdev_queue* FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct xlgmac_pdata* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xlgmac_pdata*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC7 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct xlgmac_channel*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct xlgmac_channel*) ; 
 int /*<<< orphan*/  tx_err ; 
 int FUNC10 (struct xlgmac_channel*,struct xlgmac_ring*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*,struct xlgmac_pkt_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct xlgmac_pdata*,struct xlgmac_ring*,struct sk_buff*,struct xlgmac_pkt_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct xlgmac_pkt_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct net_device *netdev)
{
	struct xlgmac_pdata *pdata = FUNC4(netdev);
	struct xlgmac_pkt_info *tx_pkt_info;
	struct xlgmac_desc_ops *desc_ops;
	struct xlgmac_channel *channel;
	struct xlgmac_hw_ops *hw_ops;
	struct netdev_queue *txq;
	struct xlgmac_ring *ring;
	int ret;

	desc_ops = &pdata->desc_ops;
	hw_ops = &pdata->hw_ops;

	FUNC0("skb->len = %d\n", skb->len);

	channel = pdata->channel_head + skb->queue_mapping;
	txq = FUNC3(netdev, channel->queue_index);
	ring = channel->tx_ring;
	tx_pkt_info = &ring->pkt_info;

	if (skb->len == 0) {
		FUNC6(pdata, tx_err, netdev,
			  "empty skb received from stack\n");
		FUNC1(skb);
		return NETDEV_TX_OK;
	}

	/* Prepare preliminary packet info for TX */
	FUNC2(tx_pkt_info, 0, sizeof(*tx_pkt_info));
	FUNC12(pdata, ring, skb, tx_pkt_info);

	/* Check that there are enough descriptors available */
	ret = FUNC10(channel, ring,
					 tx_pkt_info->desc_count);
	if (ret)
		return ret;

	ret = FUNC11(skb, tx_pkt_info);
	if (ret) {
		FUNC6(pdata, tx_err, netdev,
			  "error processing TSO packet\n");
		FUNC1(skb);
		return ret;
	}
	FUNC13(skb, tx_pkt_info);

	if (!desc_ops->map_tx_skb(channel, skb)) {
		FUNC1(skb);
		return NETDEV_TX_OK;
	}

	/* Report on the actual number of bytes (to be) sent */
	FUNC5(txq, tx_pkt_info->tx_bytes);

	/* Configure required descriptor fields for transmission */
	hw_ops->dev_xmit(channel);

	if (FUNC7(pdata))
		FUNC14(netdev, skb, true);

	/* Stop the queue in advance if there may not be enough descriptors */
	FUNC10(channel, ring, XLGMAC_TX_MAX_DESC_NR);

	return NETDEV_TX_OK;
}