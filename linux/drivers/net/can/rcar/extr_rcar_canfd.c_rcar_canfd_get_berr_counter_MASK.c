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
typedef  int /*<<< orphan*/  u32 ;
struct rcar_canfd_channel {int /*<<< orphan*/  base; int /*<<< orphan*/  channel; } ;
struct net_device {int dummy; } ;
struct can_berr_counter {int /*<<< orphan*/  rxerr; int /*<<< orphan*/  txerr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rcar_canfd_channel* FUNC3 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct net_device *dev,
				       struct can_berr_counter *bec)
{
	struct rcar_canfd_channel *priv = FUNC3(dev);
	u32 val, ch = priv->channel;

	/* Peripheral clock is already enabled in probe */
	val = FUNC4(priv->base, FUNC0(ch));
	bec->txerr = FUNC2(val);
	bec->rxerr = FUNC1(val);
	return 0;
}