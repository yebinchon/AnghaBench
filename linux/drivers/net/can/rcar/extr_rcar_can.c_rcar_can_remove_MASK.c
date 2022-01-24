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
struct rcar_can_priv {int /*<<< orphan*/  napi; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct rcar_can_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC3(pdev);
	struct rcar_can_priv *priv = FUNC1(ndev);

	FUNC4(ndev);
	FUNC2(&priv->napi);
	FUNC0(ndev);
	return 0;
}