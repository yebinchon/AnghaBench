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
struct ravb_private {scalar_t__ chip_id; int /*<<< orphan*/ * napi; int /*<<< orphan*/  emac_irq; int /*<<< orphan*/ * rx_irqs; int /*<<< orphan*/ * tx_irqs; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 size_t RAVB_BE ; 
 size_t RAVB_NC ; 
 scalar_t__ RCAR_GEN2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct ravb_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  ravb_be_interrupt ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  ravb_emac_interrupt ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,struct device*,char*) ; 
 int /*<<< orphan*/  ravb_interrupt ; 
 int /*<<< orphan*/  ravb_multi_interrupt ; 
 int /*<<< orphan*/  ravb_nc_interrupt ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC13(struct net_device *ndev)
{
	struct ravb_private *priv = FUNC4(ndev);
	struct platform_device *pdev = priv->pdev;
	struct device *dev = &pdev->dev;
	int error;

	FUNC2(&priv->napi[RAVB_BE]);
	FUNC2(&priv->napi[RAVB_NC]);

	if (priv->chip_id == RCAR_GEN2) {
		error = FUNC12(ndev->irq, ravb_interrupt, IRQF_SHARED,
				    ndev->name, ndev);
		if (error) {
			FUNC3(ndev, "cannot request IRQ\n");
			goto out_napi_off;
		}
	} else {
		error = FUNC8(ndev->irq, ravb_multi_interrupt, ndev,
				      dev, "ch22:multi");
		if (error)
			goto out_napi_off;
		error = FUNC8(priv->emac_irq, ravb_emac_interrupt, ndev,
				      dev, "ch24:emac");
		if (error)
			goto out_free_irq;
		error = FUNC8(priv->rx_irqs[RAVB_BE], ravb_be_interrupt,
				      ndev, dev, "ch0:rx_be");
		if (error)
			goto out_free_irq_emac;
		error = FUNC8(priv->tx_irqs[RAVB_BE], ravb_be_interrupt,
				      ndev, dev, "ch18:tx_be");
		if (error)
			goto out_free_irq_be_rx;
		error = FUNC8(priv->rx_irqs[RAVB_NC], ravb_nc_interrupt,
				      ndev, dev, "ch1:rx_nc");
		if (error)
			goto out_free_irq_be_tx;
		error = FUNC8(priv->tx_irqs[RAVB_NC], ravb_nc_interrupt,
				      ndev, dev, "ch19:tx_nc");
		if (error)
			goto out_free_irq_nc_rx;
	}

	/* Device init */
	error = FUNC6(ndev);
	if (error)
		goto out_free_irq_nc_tx;
	FUNC7(ndev);

	/* Initialise PTP Clock driver */
	if (priv->chip_id == RCAR_GEN2)
		FUNC10(ndev, priv->pdev);

	FUNC5(ndev);

	/* PHY control start */
	error = FUNC9(ndev);
	if (error)
		goto out_ptp_stop;

	return 0;

out_ptp_stop:
	/* Stop PTP Clock driver */
	if (priv->chip_id == RCAR_GEN2)
		FUNC11(ndev);
out_free_irq_nc_tx:
	if (priv->chip_id == RCAR_GEN2)
		goto out_free_irq;
	FUNC0(priv->tx_irqs[RAVB_NC], ndev);
out_free_irq_nc_rx:
	FUNC0(priv->rx_irqs[RAVB_NC], ndev);
out_free_irq_be_tx:
	FUNC0(priv->tx_irqs[RAVB_BE], ndev);
out_free_irq_be_rx:
	FUNC0(priv->rx_irqs[RAVB_BE], ndev);
out_free_irq_emac:
	FUNC0(priv->emac_irq, ndev);
out_free_irq:
	FUNC0(ndev->irq, ndev);
out_napi_off:
	FUNC1(&priv->napi[RAVB_NC]);
	FUNC1(&priv->napi[RAVB_BE]);
	return error;
}