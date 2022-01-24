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
struct xgmac_priv {unsigned int tx_tail; int /*<<< orphan*/  dev; struct sk_buff** tx_skbuff; int /*<<< orphan*/  device; int /*<<< orphan*/  tx_head; struct xgmac_dma_desc* dma_tx; } ;
struct xgmac_dma_desc {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  DMA_TX_RING_SZ ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC0 (struct xgmac_dma_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgmac_dma_desc*) ; 
 scalar_t__ FUNC2 (struct xgmac_dma_desc*) ; 
 scalar_t__ FUNC3 (struct xgmac_dma_desc*) ; 
 scalar_t__ FUNC4 (struct xgmac_dma_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgmac_priv*,struct xgmac_dma_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (struct xgmac_priv*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static void FUNC17(struct xgmac_priv *priv)
{
	while (FUNC7(priv->tx_head, priv->tx_tail, DMA_TX_RING_SZ)) {
		unsigned int entry = priv->tx_tail;
		struct sk_buff *skb = priv->tx_skbuff[entry];
		struct xgmac_dma_desc *p = priv->dma_tx + entry;

		/* Check if the descriptor is owned by the DMA. */
		if (FUNC2(p))
			break;

		FUNC11(priv->dev, "tx ring: curr %d, dirty %d\n",
			priv->tx_head, priv->tx_tail);

		if (FUNC3(p))
			FUNC10(priv->device, FUNC0(p),
					 FUNC1(p), DMA_TO_DEVICE);
		else
			FUNC9(priv->device, FUNC0(p),
				       FUNC1(p), DMA_TO_DEVICE);

		/* Check tx error on the last segment */
		if (FUNC4(p)) {
			FUNC5(priv, p);
			FUNC6(skb);
		}

		priv->tx_skbuff[entry] = NULL;
		priv->tx_tail = FUNC8(entry, DMA_TX_RING_SZ);
	}

	/* Ensure tx_tail is visible to xgmac_xmit */
	FUNC14();
	if (FUNC16(FUNC12(priv->dev) &&
	    (FUNC15(priv) > MAX_SKB_FRAGS)))
		FUNC13(priv->dev);
}