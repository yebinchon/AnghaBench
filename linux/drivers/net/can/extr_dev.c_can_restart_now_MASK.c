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
struct net_device {int dummy; } ;
struct can_priv {scalar_t__ state; int /*<<< orphan*/  restart_work; scalar_t__ restart_ms; } ;

/* Variables and functions */
 scalar_t__ CAN_STATE_BUS_OFF ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct can_priv* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *dev)
{
	struct can_priv *priv = FUNC2(dev);

	/* A manual restart is only permitted if automatic restart is
	 * disabled and the device is in the bus-off state
	 */
	if (priv->restart_ms)
		return -EINVAL;
	if (priv->state != CAN_STATE_BUS_OFF)
		return -EBUSY;

	FUNC1(&priv->restart_work);
	FUNC0(dev);

	return 0;
}