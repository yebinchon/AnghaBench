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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct net_device {int dummy; } ;
struct hip04_priv {int /*<<< orphan*/  tx_timeout_task; int /*<<< orphan*/  phy_node; scalar_t__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct device*) ; 
 struct hip04_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct net_device* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC6(pdev);
	struct hip04_priv *priv = FUNC3(ndev);
	struct device *d = &pdev->dev;

	if (priv->phy)
		FUNC5(priv->phy);

	FUNC2(ndev, d);
	FUNC7(ndev);
	FUNC4(priv->phy_node);
	FUNC0(&priv->tx_timeout_task);
	FUNC1(ndev);

	return 0;
}