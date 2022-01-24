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
struct xgmac_priv {int /*<<< orphan*/  base; int /*<<< orphan*/  napi; int /*<<< orphan*/  pmt_irq; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct xgmac_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC5(pdev);
	struct xgmac_priv *priv = FUNC3(ndev);
	struct resource *res;

	FUNC10(priv->base);

	/* Free the IRQ lines */
	FUNC0(ndev->irq, ndev);
	FUNC0(priv->pmt_irq, ndev);

	FUNC9(ndev);
	FUNC4(&priv->napi);

	FUNC2(priv->base);
	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	FUNC7(res->start, FUNC8(res));

	FUNC1(ndev);

	return 0;
}