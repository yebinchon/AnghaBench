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
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct bcm_enet_priv {int rx_ring_size; int irq_tx; int irq_rx; int /*<<< orphan*/  tx_desc_dma; struct bcm_enet_desc* tx_desc_cpu; int /*<<< orphan*/  tx_desc_alloc_size; int /*<<< orphan*/  rx_desc_dma; struct bcm_enet_desc* rx_desc_cpu; int /*<<< orphan*/  rx_desc_alloc_size; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  rx_skb_size; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  rx_timeout; int /*<<< orphan*/  napi; int /*<<< orphan*/  swphy_poll; TYPE_1__* pdev; } ;
struct bcm_enet_desc {int /*<<< orphan*/  address; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ENETDMAC_IRMASK ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,struct bcm_enet_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct bcm_enet_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct bcm_enet_priv *priv;
	struct device *kdev;
	int i;

	priv = FUNC10(dev);
	kdev = &priv->pdev->dev;

	FUNC2(&priv->swphy_poll);
	FUNC11(dev);
	FUNC9(&priv->napi);
	FUNC2(&priv->rx_timeout);

	/* mask all interrupts */
	FUNC5(priv, 0, ENETDMAC_IRMASK, priv->rx_chan);
	FUNC5(priv, 0, ENETDMAC_IRMASK, priv->tx_chan);

	/* disable dma & mac */
	FUNC0(priv, priv->tx_chan);
	FUNC0(priv, priv->rx_chan);

	/* force reclaim of all tx buffers */
	FUNC1(dev, 1);

	/* free the rx skb ring */
	for (i = 0; i < priv->rx_ring_size; i++) {
		struct bcm_enet_desc *desc;

		if (!priv->rx_skb[i])
			continue;

		desc = &priv->rx_desc_cpu[i];
		FUNC4(kdev, desc->address, priv->rx_skb_size,
				 DMA_FROM_DEVICE);
		FUNC8(priv->rx_skb[i]);
	}

	/* free remaining allocated memory */
	FUNC7(priv->rx_skb);
	FUNC7(priv->tx_skb);
	FUNC3(kdev, priv->rx_desc_alloc_size,
			  priv->rx_desc_cpu, priv->rx_desc_dma);
	FUNC3(kdev, priv->tx_desc_alloc_size,
			  priv->tx_desc_cpu, priv->tx_desc_dma);
	if (priv->irq_tx != -1)
		FUNC6(priv->irq_tx, dev);
	FUNC6(priv->irq_rx, dev);

	return 0;
}