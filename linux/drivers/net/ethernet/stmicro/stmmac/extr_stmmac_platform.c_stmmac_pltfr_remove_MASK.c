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
struct stmmac_priv {struct plat_stmmacenet_data* plat; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct plat_stmmacenet_data {int /*<<< orphan*/  bsp_priv; int /*<<< orphan*/  (* exit ) (struct platform_device*,int /*<<< orphan*/ ) ;} ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct stmmac_priv* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct platform_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 

int FUNC5(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC1(pdev);
	struct stmmac_priv *priv = FUNC0(ndev);
	struct plat_stmmacenet_data *plat = priv->plat;
	int ret = FUNC2(&pdev->dev);

	if (plat->exit)
		plat->exit(pdev, plat->bsp_priv);

	FUNC3(pdev, plat);

	return ret;
}