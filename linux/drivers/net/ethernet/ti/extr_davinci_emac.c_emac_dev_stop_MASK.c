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
struct resource {int start; int end; } ;
struct device {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; scalar_t__ phydev; struct device dev; } ;
struct emac_priv {TYPE_1__* pdev; int /*<<< orphan*/  ndev; int /*<<< orphan*/  dma; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_SOFTRESET ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct emac_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct emac_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 struct resource* FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net_device *ndev)
{
	struct resource *res;
	int i = 0;
	int irq_num;
	struct emac_priv *priv = FUNC6(ndev);
	struct device *emac_dev = &ndev->dev;

	/* inform the upper layers. */
	FUNC9(ndev);
	FUNC5(&priv->napi);

	FUNC7(ndev);
	FUNC2(priv);
	FUNC0(priv->dma);
	FUNC3(EMAC_SOFTRESET, 1);

	if (ndev->phydev)
		FUNC10(ndev->phydev);

	/* Free IRQ */
	while ((res = FUNC11(priv->pdev, IORESOURCE_IRQ, i))) {
		for (irq_num = res->start; irq_num <= res->end; irq_num++)
			FUNC4(irq_num, priv->ndev);
		i++;
	}

	if (FUNC8(priv))
		FUNC1(emac_dev, "DaVinci EMAC: %s stopped\n", ndev->name);

	FUNC12(&priv->pdev->dev);
	return 0;
}