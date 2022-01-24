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
struct platform_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  phydev; } ;
struct hisi_femac_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct hisi_femac_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC5(pdev);
	struct hisi_femac_priv *priv = FUNC2(ndev);

	FUNC3(&priv->napi);
	FUNC6(ndev);

	FUNC4(ndev->phydev);
	FUNC0(priv->clk);
	FUNC1(ndev);

	return 0;
}