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
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  tx_pending_len; int /*<<< orphan*/  iface_running; } ;

/* Variables and functions */
 int FUNC0 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct lbs_private *priv = dev->ml_priv;
	int ret = 0;

	if (!priv->iface_running) {
		ret = FUNC0(priv);
		if (ret)
			goto out;
	}

	FUNC3(&priv->driver_lock);

	FUNC1(dev);

	if (!priv->tx_pending_len)
		FUNC2(dev);

	FUNC4(&priv->driver_lock);

out:
	return ret;
}