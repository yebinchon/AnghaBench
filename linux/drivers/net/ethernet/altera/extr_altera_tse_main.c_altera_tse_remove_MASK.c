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
struct platform_device {int dummy; } ;
struct net_device {scalar_t__ phydev; } ;
struct altera_tse_private {TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct altera_tse_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct net_device* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC6(pdev);
	struct altera_tse_private *priv = FUNC2(ndev);

	if (ndev->phydev) {
		FUNC5(ndev->phydev);

		if (FUNC4(priv->device->of_node))
			FUNC3(priv->device->of_node);
	}

	FUNC7(pdev, NULL);
	FUNC0(ndev);
	FUNC8(ndev);
	FUNC1(ndev);

	return 0;
}