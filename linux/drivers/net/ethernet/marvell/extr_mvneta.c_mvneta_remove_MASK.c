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
struct net_device {int /*<<< orphan*/  irq; } ;
struct mvneta_port {int id; scalar_t__ bm_priv; int /*<<< orphan*/  pool_short; int /*<<< orphan*/  pool_long; int /*<<< orphan*/  phylink; int /*<<< orphan*/  stats; int /*<<< orphan*/  ports; int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct mvneta_port* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct net_device  *dev = FUNC7(pdev);
	struct mvneta_port *pp = FUNC5(dev);

	FUNC8(dev);
	FUNC0(pp->clk_bus);
	FUNC0(pp->clk);
	FUNC1(pp->ports);
	FUNC1(pp->stats);
	FUNC2(dev->irq);
	FUNC6(pp->phylink);

	if (pp->bm_priv) {
		FUNC3(pp->bm_priv, pp->pool_long, 1 << pp->id);
		FUNC3(pp->bm_priv, pp->pool_short,
				       1 << pp->id);
		FUNC4(pp->bm_priv);
	}

	return 0;
}