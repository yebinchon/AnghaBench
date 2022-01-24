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
struct w5300_priv {int /*<<< orphan*/  link_irq; int /*<<< orphan*/  link_gpio; int /*<<< orphan*/  irq; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct w5300_priv* FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct w5300_priv*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC4(pdev);
	struct w5300_priv *priv = FUNC3(ndev);

	FUNC6(priv);
	FUNC0(priv->irq, ndev);
	if (FUNC2(priv->link_gpio))
		FUNC0(priv->link_irq, ndev);

	FUNC5(ndev);
	FUNC1(ndev);
	return 0;
}