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
struct net_device {int /*<<< orphan*/  phydev; int /*<<< orphan*/  irq; } ;
struct device {int dummy; } ;
struct bcm_enet_priv {int rx_ring_size; scalar_t__ has_phy; int /*<<< orphan*/  irq_rx; int /*<<< orphan*/  irq_tx; int /*<<< orphan*/  tx_desc_dma; struct bcm_enet_desc* tx_desc_cpu; int /*<<< orphan*/  tx_desc_alloc_size; int /*<<< orphan*/  rx_desc_dma; struct bcm_enet_desc* rx_desc_cpu; int /*<<< orphan*/  rx_desc_alloc_size; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  rx_skb_size; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  mib_update_task; int /*<<< orphan*/  rx_timeout; int /*<<< orphan*/  napi; TYPE_1__* pdev; } ;
struct bcm_enet_desc {int /*<<< orphan*/  address; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ENETDMAC_IRMASK ; 
 int /*<<< orphan*/  ENET_IRMASK_REG ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_enet_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,struct bcm_enet_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct bcm_enet_priv* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct net_device *dev)
{
	struct bcm_enet_priv *priv;
	struct device *kdev;
	int i;

	priv = FUNC13(dev);
	kdev = &priv->pdev->dev;

	FUNC14(dev);
	FUNC12(&priv->napi);
	if (priv->has_phy)
		FUNC16(dev->phydev);
	FUNC4(&priv->rx_timeout);

	/* mask all interrupts */
	FUNC8(priv, 0, ENET_IRMASK_REG);
	FUNC7(priv, 0, ENETDMAC_IRMASK, priv->rx_chan);
	FUNC7(priv, 0, ENETDMAC_IRMASK, priv->tx_chan);

	/* make sure no mib update is scheduled */
	FUNC3(&priv->mib_update_task);

	/* disable dma & mac */
	FUNC0(priv, priv->tx_chan);
	FUNC0(priv, priv->rx_chan);
	FUNC1(priv);

	/* force reclaim of all tx buffers */
	FUNC2(dev, 1);

	/* free the rx skb ring */
	for (i = 0; i < priv->rx_ring_size; i++) {
		struct bcm_enet_desc *desc;

		if (!priv->rx_skb[i])
			continue;

		desc = &priv->rx_desc_cpu[i];
		FUNC6(kdev, desc->address, priv->rx_skb_size,
				 DMA_FROM_DEVICE);
		FUNC11(priv->rx_skb[i]);
	}

	/* free remaining allocated memory */
	FUNC10(priv->rx_skb);
	FUNC10(priv->tx_skb);
	FUNC5(kdev, priv->rx_desc_alloc_size,
			  priv->rx_desc_cpu, priv->rx_desc_dma);
	FUNC5(kdev, priv->tx_desc_alloc_size,
			  priv->tx_desc_cpu, priv->tx_desc_dma);
	FUNC9(priv->irq_tx, dev);
	FUNC9(priv->irq_rx, dev);
	FUNC9(dev->irq, dev);

	/* release phy */
	if (priv->has_phy)
		FUNC15(dev->phydev);

	return 0;
}