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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  base_addr; } ;
struct dev_priv {int /*<<< orphan*/  chip_lock; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR0 ; 
 int /*<<< orphan*/  CSR0_STOP ; 
 int /*<<< orphan*/  CSR3 ; 
 int /*<<< orphan*/  CSR3_MASKALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct net_device *dev)
{
	struct dev_priv *priv = FUNC2(dev);
	unsigned long flags;

	FUNC0(&priv->timer);

	FUNC4(dev);
	FUNC3(dev);

	FUNC5(&priv->chip_lock, flags);
	FUNC7 (dev->base_addr, CSR0, CSR0_STOP);
	FUNC7 (dev->base_addr, CSR3, CSR3_MASKALL);
	FUNC6(&priv->chip_lock, flags);

	FUNC1 (dev->irq, dev);

	return 0;
}