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
struct net_device {int dummy; } ;
struct hix5hd2_priv {int /*<<< orphan*/  tx_timeout_task; int /*<<< orphan*/  phy_node; int /*<<< orphan*/  hw_cap; int /*<<< orphan*/  bus; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct hix5hd2_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC10(pdev);
	struct hix5hd2_priv *priv = FUNC7(ndev);

	FUNC8(&priv->napi);
	FUNC11(ndev);
	FUNC6(priv->bus);
	FUNC5(priv->bus);

	if (FUNC0(priv->hw_cap))
		FUNC4(priv);
	FUNC3(priv);
	FUNC9(priv->phy_node);
	FUNC1(&priv->tx_timeout_task);
	FUNC2(ndev);

	return 0;
}