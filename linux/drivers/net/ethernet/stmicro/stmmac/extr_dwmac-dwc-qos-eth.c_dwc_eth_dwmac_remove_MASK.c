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
struct stmmac_priv {int /*<<< orphan*/  plat; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct dwc_eth_dwmac_data {int (* remove ) (struct platform_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct stmmac_priv* FUNC1 (struct net_device*) ; 
 struct dwc_eth_dwmac_data* FUNC2 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC3(pdev);
	struct stmmac_priv *priv = FUNC1(ndev);
	const struct dwc_eth_dwmac_data *data;
	int err;

	data = FUNC2(&pdev->dev);

	err = FUNC4(&pdev->dev);
	if (err < 0)
		FUNC0(&pdev->dev, "failed to remove platform: %d\n", err);

	err = data->remove(pdev);
	if (err < 0)
		FUNC0(&pdev->dev, "failed to remove subdriver: %d\n", err);

	FUNC5(pdev, priv->plat);

	return err;
}