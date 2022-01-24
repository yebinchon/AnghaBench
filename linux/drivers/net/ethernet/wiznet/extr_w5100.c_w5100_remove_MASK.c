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
struct w5100_priv {int /*<<< orphan*/  xfer_wq; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  setrx_work; int /*<<< orphan*/  link_irq; int /*<<< orphan*/  link_gpio; int /*<<< orphan*/  irq; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct w5100_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct w5100_priv*) ; 

int FUNC9(struct device *dev)
{
	struct net_device *ndev = FUNC1(dev);
	struct w5100_priv *priv = FUNC6(ndev);

	FUNC8(priv);
	FUNC3(priv->irq, ndev);
	if (FUNC5(priv->link_gpio))
		FUNC3(priv->link_irq, ndev);

	FUNC2(&priv->setrx_work);
	FUNC2(&priv->restart_work);
	FUNC0(priv->xfer_wq);

	FUNC7(ndev);
	FUNC4(ndev);
	return 0;
}