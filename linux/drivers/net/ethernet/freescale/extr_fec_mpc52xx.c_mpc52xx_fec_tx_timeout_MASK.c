#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  dev; } ;
struct mpc52xx_fec_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct mpc52xx_fec_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct mpc52xx_fec_priv *priv = FUNC2(dev);
	unsigned long flags;

	FUNC0(&dev->dev, "transmit timed out\n");

	FUNC4(&priv->lock, flags);
	FUNC1(dev);
	dev->stats.tx_errors++;
	FUNC5(&priv->lock, flags);

	FUNC3(dev);
}