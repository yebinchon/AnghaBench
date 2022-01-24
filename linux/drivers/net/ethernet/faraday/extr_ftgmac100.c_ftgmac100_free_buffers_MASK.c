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
struct sk_buff {int dummy; } ;
struct ftgmac100_txdes {int /*<<< orphan*/  txdes0; } ;
struct ftgmac100_rxdes {int /*<<< orphan*/  rxdes3; } ;
struct ftgmac100 {int rx_q_entries; int tx_q_entries; struct sk_buff** tx_skbs; struct ftgmac100_txdes* txdes; int /*<<< orphan*/  dev; struct sk_buff** rx_skbs; struct ftgmac100_rxdes* rxdes; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ftgmac100*,int,struct sk_buff*,struct ftgmac100_txdes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ftgmac100 *priv)
{
	int i;

	/* Free all RX buffers */
	for (i = 0; i < priv->rx_q_entries; i++) {
		struct ftgmac100_rxdes *rxdes = &priv->rxdes[i];
		struct sk_buff *skb = priv->rx_skbs[i];
		dma_addr_t map = FUNC3(rxdes->rxdes3);

		if (!skb)
			continue;

		priv->rx_skbs[i] = NULL;
		FUNC1(priv->dev, map, RX_BUF_SIZE, DMA_FROM_DEVICE);
		FUNC0(skb);
	}

	/* Free all TX buffers */
	for (i = 0; i < priv->tx_q_entries; i++) {
		struct ftgmac100_txdes *txdes = &priv->txdes[i];
		struct sk_buff *skb = priv->tx_skbs[i];

		if (!skb)
			continue;
		FUNC2(priv, i, skb, txdes,
					 FUNC3(txdes->txdes0));
	}
}