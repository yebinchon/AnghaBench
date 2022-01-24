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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct nb8800_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  mii_bus; int /*<<< orphan*/  phy_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct nb8800_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC8(pdev);
	struct nb8800_priv *priv = FUNC4(ndev);

	FUNC9(ndev);
	if (FUNC7(pdev->dev.of_node))
		FUNC6(pdev->dev.of_node);
	FUNC5(priv->phy_node);

	FUNC2(priv->mii_bus);

	FUNC0(priv->clk);

	FUNC3(ndev);
	FUNC1(ndev);

	return 0;
}