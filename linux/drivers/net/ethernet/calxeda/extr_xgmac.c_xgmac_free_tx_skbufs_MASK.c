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
struct xgmac_priv {int /*<<< orphan*/ ** tx_skbuff; int /*<<< orphan*/  device; struct xgmac_dma_desc* dma_tx; } ;
struct xgmac_dma_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int DMA_TX_RING_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct xgmac_dma_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgmac_dma_desc*) ; 
 scalar_t__ FUNC2 (struct xgmac_dma_desc*) ; 
 scalar_t__ FUNC3 (struct xgmac_dma_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct xgmac_priv *priv)
{
	int i;
	struct xgmac_dma_desc *p;

	if (!priv->tx_skbuff)
		return;

	for (i = 0; i < DMA_TX_RING_SZ; i++) {
		if (priv->tx_skbuff[i] == NULL)
			continue;

		p = priv->dma_tx + i;
		if (FUNC2(p))
			FUNC6(priv->device, FUNC0(p),
					 FUNC1(p), DMA_TO_DEVICE);
		else
			FUNC5(priv->device, FUNC0(p),
				       FUNC1(p), DMA_TO_DEVICE);

		if (FUNC3(p))
			FUNC4(priv->tx_skbuff[i]);
		priv->tx_skbuff[i] = NULL;
	}
}