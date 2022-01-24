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
struct sk_buff {scalar_t__ len; } ;
struct netcp_stats {int /*<<< orphan*/  tx_dropped; } ;
struct netcp_intf {int tx_pause_threshold; int /*<<< orphan*/  ndev_dev; int /*<<< orphan*/  tx_pool; struct netcp_stats stats; } ;
struct net_device {int dummy; } ;
struct knav_dma_desc {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 scalar_t__ NETCP_MIN_PACKET_SIZE ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct netcp_intf*,struct knav_dma_desc*,int) ; 
 struct knav_dma_desc* FUNC5 (struct sk_buff*,struct netcp_intf*) ; 
 int FUNC6 (struct netcp_intf*,struct sk_buff*,struct knav_dma_desc*) ; 
 struct netcp_intf* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 
 int FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct net_device *ndev)
{
	struct netcp_intf *netcp = FUNC7(ndev);
	struct netcp_stats *tx_stats = &netcp->stats;
	int subqueue = FUNC9(skb);
	struct knav_dma_desc *desc;
	int desc_count, ret = 0;

	if (FUNC11(skb->len <= 0)) {
		FUNC1(skb);
		return NETDEV_TX_OK;
	}

	if (FUNC11(skb->len < NETCP_MIN_PACKET_SIZE)) {
		ret = FUNC10(skb, NETCP_MIN_PACKET_SIZE);
		if (ret < 0) {
			/* If we get here, the skb has already been dropped */
			FUNC2(netcp->ndev_dev, "padding failed (%d), packet dropped\n",
				 ret);
			tx_stats->tx_dropped++;
			return ret;
		}
		skb->len = NETCP_MIN_PACKET_SIZE;
	}

	desc = FUNC5(skb, netcp);
	if (FUNC11(!desc)) {
		FUNC8(ndev, subqueue);
		ret = -ENOBUFS;
		goto drop;
	}

	ret = FUNC6(netcp, skb, desc);
	if (ret)
		goto drop;

	/* Check Tx pool count & stop subqueue if needed */
	desc_count = FUNC3(netcp->tx_pool);
	if (desc_count < netcp->tx_pause_threshold) {
		FUNC0(netcp->ndev_dev, "pausing tx, count(%d)\n", desc_count);
		FUNC8(ndev, subqueue);
	}
	return NETDEV_TX_OK;

drop:
	tx_stats->tx_dropped++;
	if (desc)
		FUNC4(netcp, desc, sizeof(*desc));
	FUNC1(skb);
	return ret;
}