#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftmac100 {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ MAX_PKT_SIZE ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ftmac100*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 struct ftmac100* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static netdev_tx_t
FUNC10(struct sk_buff *skb, struct net_device *netdev)
{
	struct ftmac100 *priv = FUNC7(netdev);
	dma_addr_t map;

	if (FUNC9(skb->len > MAX_PKT_SIZE)) {
		if (FUNC4())
			FUNC5(netdev, "tx packet too big\n");

		netdev->stats.tx_dropped++;
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	map = FUNC1(priv->dev, skb->data, FUNC8(skb), DMA_TO_DEVICE);
	if (FUNC9(FUNC2(priv->dev, map))) {
		/* drop packet */
		if (FUNC4())
			FUNC6(netdev, "map socket buffer failed\n");

		netdev->stats.tx_dropped++;
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	return FUNC3(priv, skb, map);
}