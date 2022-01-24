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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct emac_priv {int /*<<< orphan*/  phy_node; int /*<<< orphan*/  dma; scalar_t__ rxchan; scalar_t__ txchan; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct emac_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 scalar_t__ FUNC7 (struct device_node*) ; 
 struct net_device* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC8(pdev);
	struct emac_priv *priv = FUNC4(ndev);
	struct device_node *np = pdev->dev.of_node;

	FUNC2(&ndev->dev, "DaVinci EMAC: davinci_emac_remove()\n");

	if (priv->txchan)
		FUNC0(priv->txchan);
	if (priv->rxchan)
		FUNC0(priv->rxchan);
	FUNC1(priv->dma);

	FUNC10(ndev);
	FUNC5(priv->phy_node);
	FUNC9(&pdev->dev);
	if (FUNC7(np))
		FUNC6(np);
	FUNC3(ndev);

	return 0;
}