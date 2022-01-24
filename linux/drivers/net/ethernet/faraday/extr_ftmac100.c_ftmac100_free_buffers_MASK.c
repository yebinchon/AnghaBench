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
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct ftmac100_txdes {int dummy; } ;
struct ftmac100_rxdes {int dummy; } ;
struct ftmac100_descs {int dummy; } ;
struct ftmac100 {int /*<<< orphan*/  descs_dma_addr; TYPE_1__* descs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct ftmac100_txdes* txdes; struct ftmac100_rxdes* rxdes; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 int RX_QUEUE_ENTRIES ; 
 int TX_QUEUE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ftmac100_rxdes*) ; 
 struct page* FUNC6 (struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC7 (struct ftmac100_txdes*) ; 
 struct sk_buff* FUNC8 (struct ftmac100_txdes*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC10(struct ftmac100 *priv)
{
	int i;

	for (i = 0; i < RX_QUEUE_ENTRIES; i++) {
		struct ftmac100_rxdes *rxdes = &priv->descs->rxdes[i];
		struct page *page = FUNC6(rxdes);
		dma_addr_t map = FUNC5(rxdes);

		if (!page)
			continue;

		FUNC3(priv->dev, map, RX_BUF_SIZE, DMA_FROM_DEVICE);
		FUNC0(page);
	}

	for (i = 0; i < TX_QUEUE_ENTRIES; i++) {
		struct ftmac100_txdes *txdes = &priv->descs->txdes[i];
		struct sk_buff *skb = FUNC8(txdes);
		dma_addr_t map = FUNC7(txdes);

		if (!skb)
			continue;

		FUNC4(priv->dev, map, FUNC9(skb), DMA_TO_DEVICE);
		FUNC1(skb);
	}

	FUNC2(priv->dev, sizeof(struct ftmac100_descs),
			  priv->descs, priv->descs_dma_addr);
}