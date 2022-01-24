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
struct nixge_priv {scalar_t__ mii_bus; int /*<<< orphan*/  phy_node; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct nixge_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC6(pdev);
	struct nixge_priv *priv = FUNC2(ndev);

	FUNC7(ndev);

	if (FUNC5(pdev->dev.of_node))
		FUNC4(pdev->dev.of_node);
	FUNC3(priv->phy_node);

	if (priv->mii_bus)
		FUNC1(priv->mii_bus);

	FUNC0(ndev);

	return 0;
}