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
struct phy_device {int dummy; } ;
struct nixge_priv {int /*<<< orphan*/  dma_err_tasklet; int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  napi; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  phy_node; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct nixge_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  nixge_dma_err_handler ; 
 int /*<<< orphan*/  nixge_handle_link_change ; 
 int /*<<< orphan*/  nixge_rx_irq ; 
 int /*<<< orphan*/  nixge_tx_irq ; 
 struct phy_device* FUNC6 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net_device *ndev)
{
	struct nixge_priv *priv = FUNC3(ndev);
	struct phy_device *phy;
	int ret;

	FUNC5(ndev);

	phy = FUNC6(ndev, priv->phy_node,
			     &nixge_handle_link_change, 0, priv->phy_mode);
	if (!phy)
		return -ENODEV;

	FUNC8(phy);

	/* Enable tasklets for Axi DMA error handling */
	FUNC11(&priv->dma_err_tasklet, nixge_dma_err_handler,
		     (unsigned long)priv);

	FUNC1(&priv->napi);

	/* Enable interrupts for Axi DMA Tx */
	ret = FUNC10(priv->tx_irq, nixge_tx_irq, 0, ndev->name, ndev);
	if (ret)
		goto err_tx_irq;
	/* Enable interrupts for Axi DMA Rx */
	ret = FUNC10(priv->rx_irq, nixge_rx_irq, 0, ndev->name, ndev);
	if (ret)
		goto err_rx_irq;

	FUNC4(ndev);

	return 0;

err_rx_irq:
	FUNC0(priv->tx_irq, ndev);
err_tx_irq:
	FUNC9(phy);
	FUNC7(phy);
	FUNC12(&priv->dma_err_tasklet);
	FUNC2(ndev, "request_irq() failed\n");
	return ret;
}