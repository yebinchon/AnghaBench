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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct ftgmac100_rxdes {void* rxdes0; void* rxdes3; } ;
struct ftgmac100 {int rx_q_entries; int /*<<< orphan*/  rxdes0_edorr_mask; struct sk_buff** rx_skbs; int /*<<< orphan*/  rx_scratch_dma; int /*<<< orphan*/  dev; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 struct sk_buff* FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct ftgmac100 *priv, unsigned int entry,
				  struct ftgmac100_rxdes *rxdes, gfp_t gfp)
{
	struct net_device *netdev = priv->netdev;
	struct sk_buff *skb;
	dma_addr_t map;
	int err = 0;

	skb = FUNC6(netdev, RX_BUF_SIZE);
	if (FUNC9(!skb)) {
		if (FUNC5())
			FUNC8(netdev, "failed to allocate rx skb\n");
		err = -ENOMEM;
		map = priv->rx_scratch_dma;
	} else {
		map = FUNC2(priv->dev, skb->data, RX_BUF_SIZE,
				     DMA_FROM_DEVICE);
		if (FUNC9(FUNC3(priv->dev, map))) {
			if (FUNC5())
				FUNC7(netdev, "failed to map rx page\n");
			FUNC1(skb);
			map = priv->rx_scratch_dma;
			skb = NULL;
			err = -ENOMEM;
		}
	}

	/* Store skb */
	priv->rx_skbs[entry] = skb;

	/* Store DMA address into RX desc */
	rxdes->rxdes3 = FUNC0(map);

	/* Ensure the above is ordered vs clearing the OWN bit */
	FUNC4();

	/* Clean status (which resets own bit) */
	if (entry == (priv->rx_q_entries - 1))
		rxdes->rxdes0 = FUNC0(priv->rxdes0_edorr_mask);
	else
		rxdes->rxdes0 = 0;

	return err;
}