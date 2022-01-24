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
struct xgmac_priv {int /*<<< orphan*/ * tx_skbuff; int /*<<< orphan*/ * rx_skbuff; int /*<<< orphan*/ * dma_rx; int /*<<< orphan*/  dma_rx_phy; int /*<<< orphan*/  device; int /*<<< orphan*/ * dma_tx; int /*<<< orphan*/  dma_tx_phy; } ;
struct xgmac_dma_desc {int dummy; } ;

/* Variables and functions */
 int DMA_RX_RING_SZ ; 
 int DMA_TX_RING_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xgmac_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgmac_priv*) ; 

__attribute__((used)) static void FUNC4(struct xgmac_priv *priv)
{
	/* Release the DMA TX/RX socket buffers */
	FUNC2(priv);
	FUNC3(priv);

	/* Free the consistent memory allocated for descriptor rings */
	if (priv->dma_tx) {
		FUNC0(priv->device,
				  DMA_TX_RING_SZ * sizeof(struct xgmac_dma_desc),
				  priv->dma_tx, priv->dma_tx_phy);
		priv->dma_tx = NULL;
	}
	if (priv->dma_rx) {
		FUNC0(priv->device,
				  DMA_RX_RING_SZ * sizeof(struct xgmac_dma_desc),
				  priv->dma_rx, priv->dma_rx_phy);
		priv->dma_rx = NULL;
	}
	FUNC1(priv->rx_skbuff);
	priv->rx_skbuff = NULL;
	FUNC1(priv->tx_skbuff);
	priv->tx_skbuff = NULL;
}