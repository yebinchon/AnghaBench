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
struct xgmac_priv {unsigned int dma_buf_sz; void* rx_skbuff; scalar_t__ dma_rx_phy; void* dma_rx; int /*<<< orphan*/  device; void* tx_skbuff; scalar_t__ base; scalar_t__ dma_tx_phy; void* dma_tx; scalar_t__ tx_head; scalar_t__ tx_tail; scalar_t__ rx_head; scalar_t__ rx_tail; int /*<<< orphan*/  dev; } ;
struct xgmac_dma_desc {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {scalar_t__ mtu; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,int) ; 
 int DMA_RX_RING_SZ ; 
 int DMA_TX_RING_SZ ; 
 int ENOMEM ; 
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NET_IP_ALIGN ; 
 scalar_t__ XGMAC_DMA_RX_BASE_ADDR ; 
 scalar_t__ XGMAC_DMA_TX_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC1 (void*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,void*,scalar_t__) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,void*,unsigned int,...) ; 
 struct xgmac_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct xgmac_priv*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct xgmac_priv *priv = FUNC8(dev);
	unsigned int bfsize;

	/* Set the Buffer size according to the MTU;
	 * The total buffer size including any IP offset must be a multiple
	 * of 8 bytes.
	 */
	bfsize = FUNC0(dev->mtu + ETH_HLEN + ETH_FCS_LEN + NET_IP_ALIGN, 8);

	FUNC7(priv->dev, "mtu [%d] bfsize [%d]\n", dev->mtu, bfsize);

	priv->rx_skbuff = FUNC5(DMA_RX_RING_SZ, sizeof(struct sk_buff *),
				  GFP_KERNEL);
	if (!priv->rx_skbuff)
		return -ENOMEM;

	priv->dma_rx = FUNC3(priv->device,
					  DMA_RX_RING_SZ *
					  sizeof(struct xgmac_dma_desc),
					  &priv->dma_rx_phy,
					  GFP_KERNEL);
	if (!priv->dma_rx)
		goto err_dma_rx;

	priv->tx_skbuff = FUNC5(DMA_TX_RING_SZ, sizeof(struct sk_buff *),
				  GFP_KERNEL);
	if (!priv->tx_skbuff)
		goto err_tx_skb;

	priv->dma_tx = FUNC3(priv->device,
					  DMA_TX_RING_SZ *
					  sizeof(struct xgmac_dma_desc),
					  &priv->dma_tx_phy,
					  GFP_KERNEL);
	if (!priv->dma_tx)
		goto err_dma_tx;

	FUNC7(priv->dev, "DMA desc rings: virt addr (Rx %p, "
	    "Tx %p)\n\tDMA phy addr (Rx 0x%08x, Tx 0x%08x)\n",
	    priv->dma_rx, priv->dma_tx,
	    (unsigned int)priv->dma_rx_phy, (unsigned int)priv->dma_tx_phy);

	priv->rx_tail = 0;
	priv->rx_head = 0;
	priv->dma_buf_sz = bfsize;
	FUNC1(priv->dma_rx, DMA_RX_RING_SZ, priv->dma_buf_sz);
	FUNC10(priv);

	priv->tx_tail = 0;
	priv->tx_head = 0;
	FUNC2(priv->dma_tx, DMA_TX_RING_SZ);

	FUNC9(priv->dma_tx_phy, priv->base + XGMAC_DMA_TX_BASE_ADDR);
	FUNC9(priv->dma_rx_phy, priv->base + XGMAC_DMA_RX_BASE_ADDR);

	return 0;

err_dma_tx:
	FUNC6(priv->tx_skbuff);
err_tx_skb:
	FUNC4(priv->device,
			  DMA_RX_RING_SZ * sizeof(struct xgmac_dma_desc),
			  priv->dma_rx, priv->dma_rx_phy);
err_dma_rx:
	FUNC6(priv->rx_skbuff);
	return -ENOMEM;
}