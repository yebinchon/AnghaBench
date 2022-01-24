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
struct net_device {int dev_addr; scalar_t__ phydev; int /*<<< orphan*/  name; } ;
struct altera_tse_private {int revision; int rx_ring_size; int rx_irq; int tx_irq; int /*<<< orphan*/  mac_cfg_lock; TYPE_1__* dmaops; int /*<<< orphan*/  napi; int /*<<< orphan*/  rxdma_irq_lock; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  tx_ring_size; } ;
struct TYPE_2__ {int (* init_dma ) (struct altera_tse_private*) ;int /*<<< orphan*/  (* start_rxdma ) (struct altera_tse_private*) ;int /*<<< orphan*/  (* add_rx_desc ) (struct altera_tse_private*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* enable_txirq ) (struct altera_tse_private*) ;int /*<<< orphan*/  (* enable_rxirq ) (struct altera_tse_private*) ;int /*<<< orphan*/  (* reset_dma ) (struct altera_tse_private*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC0 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  altera_isr ; 
 int dma_rx_num ; 
 int /*<<< orphan*/  dma_tx_num ; 
 int /*<<< orphan*/  FUNC1 (int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct altera_tse_private*) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,...) ; 
 struct altera_tse_private* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,int) ; 
 scalar_t__ FUNC10 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC14 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC19 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  FUNC20 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  FUNC21 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  FUNC22 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  FUNC23 (struct altera_tse_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct altera_tse_private*) ; 
 int /*<<< orphan*/  FUNC25 (struct altera_tse_private*,int) ; 

__attribute__((used)) static int FUNC26(struct net_device *dev)
{
	struct altera_tse_private *priv = FUNC8(dev);
	int ret = 0;
	int i;
	unsigned long int flags;

	/* Reset and configure TSE MAC and probe associated PHY */
	ret = priv->dmaops->init_dma(priv);
	if (ret != 0) {
		FUNC7(dev, "Cannot initialize DMA\n");
		goto phy_error;
	}

	if (FUNC10(priv))
		FUNC9(dev, "device MAC address %pM\n",
			    dev->dev_addr);

	if ((priv->revision < 0xd00) || (priv->revision > 0xe00))
		FUNC9(dev, "TSE revision %x\n", priv->revision);

	FUNC15(&priv->mac_cfg_lock);
	/* no-op if MAC not operating in SGMII mode*/
	ret = FUNC4(dev);
	if (ret) {
		FUNC7(dev,
			   "Cannot init the SGMII PCS (error: %d)\n", ret);
		FUNC17(&priv->mac_cfg_lock);
		goto phy_error;
	}

	ret = FUNC14(priv);
	/* Note that reset_mac will fail if the clocks are gated by the PHY
	 * due to the PHY being put into isolation or power down mode.
	 * This is not an error if reset fails due to no clock.
	 */
	if (ret)
		FUNC6(dev, "Cannot reset MAC core (error: %d)\n", ret);

	ret = FUNC3(priv);
	FUNC17(&priv->mac_cfg_lock);
	if (ret) {
		FUNC7(dev, "Cannot init MAC core (error: %d)\n", ret);
		goto alloc_skbuf_error;
	}

	priv->dmaops->reset_dma(priv);

	/* Create and initialize the TX/RX descriptors chains. */
	priv->rx_ring_size = dma_rx_num;
	priv->tx_ring_size = dma_tx_num;
	ret = FUNC0(priv);
	if (ret) {
		FUNC7(dev, "DMA descriptors initialization failed\n");
		goto alloc_skbuf_error;
	}


	/* Register RX interrupt */
	ret = FUNC13(priv->rx_irq, altera_isr, IRQF_SHARED,
			  dev->name, dev);
	if (ret) {
		FUNC7(dev, "Unable to register RX interrupt %d\n",
			   priv->rx_irq);
		goto init_error;
	}

	/* Register TX interrupt */
	ret = FUNC13(priv->tx_irq, altera_isr, IRQF_SHARED,
			  dev->name, dev);
	if (ret) {
		FUNC7(dev, "Unable to register TX interrupt %d\n",
			   priv->tx_irq);
		goto tx_request_irq_error;
	}

	/* Enable DMA interrupts */
	FUNC16(&priv->rxdma_irq_lock, flags);
	priv->dmaops->enable_rxirq(priv);
	priv->dmaops->enable_txirq(priv);

	/* Setup RX descriptor chain */
	for (i = 0; i < priv->rx_ring_size; i++)
		priv->dmaops->add_rx_desc(priv, &priv->rx_ring[i]);

	FUNC18(&priv->rxdma_irq_lock, flags);

	if (dev->phydev)
		FUNC12(dev->phydev);

	FUNC5(&priv->napi);
	FUNC11(dev);

	priv->dmaops->start_rxdma(priv);

	/* Start MAC Rx/Tx */
	FUNC15(&priv->mac_cfg_lock);
	FUNC25(priv, true);
	FUNC17(&priv->mac_cfg_lock);

	return 0;

tx_request_irq_error:
	FUNC1(priv->rx_irq, dev);
init_error:
	FUNC2(dev);
alloc_skbuf_error:
phy_error:
	return ret;
}