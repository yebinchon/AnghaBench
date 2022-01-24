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
struct ftmac100 {int /*<<< orphan*/  napi; int /*<<< orphan*/  res; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ftmac100* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct net_device *netdev;
	struct ftmac100 *priv;

	netdev = FUNC4(pdev);
	priv = FUNC2(netdev);

	FUNC6(netdev);

	FUNC1(priv->base);
	FUNC5(priv->res);

	FUNC3(&priv->napi);
	FUNC0(netdev);
	return 0;
}