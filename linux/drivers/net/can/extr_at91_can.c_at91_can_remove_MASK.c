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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct at91_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct at91_priv* FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct platform_device*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct net_device *dev = FUNC4(pdev);
	struct at91_priv *priv = FUNC3(dev);
	struct resource *res;

	FUNC8(dev);

	FUNC2(priv->reg_base);

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	FUNC6(res->start, FUNC7(res));

	FUNC0(priv->clk);

	FUNC1(dev);

	return 0;
}