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
struct sc92031_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_timeouts; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct sc92031_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct sc92031_priv *priv = FUNC1(dev);

	/* Disable interrupts by clearing the interrupt mask.*/
	FUNC4(dev);

	FUNC6(&priv->lock);

	priv->tx_timeouts++;

	FUNC0(dev);

	FUNC7(&priv->lock);

	/* enable interrupts */
	FUNC5(dev);

	if (FUNC2(dev))
		FUNC3(dev);
}