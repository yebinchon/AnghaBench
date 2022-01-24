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
struct stmmac_priv {TYPE_1__* plat; } ;
struct stm32_dwmac {scalar_t__ irq_pwr_wakeup; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct stm32_dwmac* bsp_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct stmmac_priv* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_dwmac*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC3(pdev);
	struct stmmac_priv *priv = FUNC2(ndev);
	int ret = FUNC5(&pdev->dev);
	struct stm32_dwmac *dwmac = priv->plat->bsp_priv;

	FUNC4(priv->plat->bsp_priv);

	if (dwmac->irq_pwr_wakeup >= 0) {
		FUNC0(&pdev->dev);
		FUNC1(&pdev->dev, false);
	}

	return ret;
}