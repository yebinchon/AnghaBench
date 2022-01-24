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
struct rcar_can_priv {int /*<<< orphan*/  clk; TYPE_1__* regs; } ;
struct net_device {int dummy; } ;
struct can_berr_counter {void* rxerr; void* txerr; } ;
struct TYPE_2__ {int /*<<< orphan*/  recr; int /*<<< orphan*/  tecr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct rcar_can_priv* FUNC2 (struct net_device const*) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const struct net_device *dev,
				     struct can_berr_counter *bec)
{
	struct rcar_can_priv *priv = FUNC2(dev);
	int err;

	err = FUNC1(priv->clk);
	if (err)
		return err;
	bec->txerr = FUNC3(&priv->regs->tecr);
	bec->rxerr = FUNC3(&priv->regs->recr);
	FUNC0(priv->clk);
	return 0;
}