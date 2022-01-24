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
struct sk_buff {int data_len; scalar_t__ len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  truesize; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  multicast; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftmac100_rxdes {int dummy; } ;
struct ftmac100 {int /*<<< orphan*/  dev; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ftmac100*,struct ftmac100_rxdes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ftmac100*) ; 
 struct ftmac100_rxdes* FUNC6 (struct ftmac100*) ; 
 int FUNC7 (struct ftmac100*,struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC8 (struct ftmac100*) ; 
 int FUNC9 (struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC10 (struct ftmac100_rxdes*) ; 
 struct page* FUNC11 (struct ftmac100_rxdes*) ; 
 int FUNC12 (struct ftmac100_rxdes*) ; 
 int FUNC13 (struct ftmac100_rxdes*) ; 
 scalar_t__ FUNC14 () ; 
 struct sk_buff* FUNC15 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static bool FUNC20(struct ftmac100 *priv, int *processed)
{
	struct net_device *netdev = priv->netdev;
	struct ftmac100_rxdes *rxdes;
	struct sk_buff *skb;
	struct page *page;
	dma_addr_t map;
	int length;
	bool ret;

	rxdes = FUNC6(priv);
	if (!rxdes)
		return false;

	if (FUNC19(FUNC7(priv, rxdes))) {
		FUNC5(priv);
		return true;
	}

	/*
	 * It is impossible to get multi-segment packets
	 * because we always provide big enough receive buffers.
	 */
	ret = FUNC12(rxdes);
	FUNC0(!ret);

	/* start processing */
	skb = FUNC15(netdev, 128);
	if (FUNC19(!skb)) {
		if (FUNC14())
			FUNC16(netdev, "rx skb alloc failed\n");

		FUNC5(priv);
		return true;
	}

	if (FUNC19(FUNC13(rxdes)))
		netdev->stats.multicast++;

	map = FUNC10(rxdes);
	FUNC2(priv->dev, map, RX_BUF_SIZE, DMA_FROM_DEVICE);

	length = FUNC9(rxdes);
	page = FUNC11(rxdes);
	FUNC18(skb, 0, page, 0, length);
	skb->len += length;
	skb->data_len += length;

	if (length > 128) {
		skb->truesize += PAGE_SIZE;
		/* We pull the minimum amount into linear part */
		FUNC1(skb, ETH_HLEN);
	} else {
		/* Small frames are copied into linear part to free one page */
		FUNC1(skb, length);
	}
	FUNC4(priv, rxdes, GFP_ATOMIC);

	FUNC8(priv);

	skb->protocol = FUNC3(skb, netdev);

	netdev->stats.rx_packets++;
	netdev->stats.rx_bytes += skb->len;

	/* push packet to protocol stack */
	FUNC17(skb);

	(*processed)++;
	return true;
}