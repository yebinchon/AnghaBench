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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct ftgmac100_txdes {int /*<<< orphan*/  txdes3; } ;
struct ftgmac100 {int /*<<< orphan*/ ** tx_skbs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FTGMAC100_TXDES0_FTS ; 
 int FTGMAC100_TXDES0_LTS ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct ftgmac100 *priv,
				     unsigned int pointer,
				     struct sk_buff *skb,
				     struct ftgmac100_txdes *txdes,
				     u32 ctl_stat)
{
	dma_addr_t map = FUNC4(txdes->txdes3);
	size_t len;

	if (ctl_stat & FTGMAC100_TXDES0_FTS) {
		len = FUNC5(skb);
		FUNC3(priv->dev, map, len, DMA_TO_DEVICE);
	} else {
		len = FUNC0(ctl_stat);
		FUNC2(priv->dev, map, len, DMA_TO_DEVICE);
	}

	/* Free SKB on last segment */
	if (ctl_stat & FTGMAC100_TXDES0_LTS)
		FUNC1(skb);
	priv->tx_skbs[pointer] = NULL;
}