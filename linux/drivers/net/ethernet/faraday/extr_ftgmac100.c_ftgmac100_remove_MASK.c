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
struct ftgmac100 {int /*<<< orphan*/  napi; int /*<<< orphan*/  res; int /*<<< orphan*/  base; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ftgmac100* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct net_device *netdev;
	struct ftgmac100 *priv;

	netdev = FUNC7(pdev);
	priv = FUNC5(netdev);

	FUNC9(netdev);

	FUNC1(priv->clk);

	/* There's a small chance the reset task will have been re-queued,
	 * during stop, make sure it's gone before we free the structure.
	 */
	FUNC0(&priv->reset_task);

	FUNC3(netdev);

	FUNC4(priv->base);
	FUNC8(priv->res);

	FUNC6(&priv->napi);
	FUNC2(netdev);
	return 0;
}