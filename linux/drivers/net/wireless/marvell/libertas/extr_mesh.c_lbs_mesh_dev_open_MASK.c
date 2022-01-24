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
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  tx_pending_len; TYPE_1__* wdev; int /*<<< orphan*/  iface_running; } ;
struct TYPE_2__ {scalar_t__ iftype; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_MESH_CONFIG_START ; 
 int EBUSY ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int FUNC0 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*) ; 
 int FUNC2 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct lbs_private *priv = dev->ml_priv;
	int ret = 0;

	if (!priv->iface_running) {
		ret = FUNC2(priv);
		if (ret)
			goto out;
	}

	FUNC5(&priv->driver_lock);

	if (priv->wdev->iftype == NL80211_IFTYPE_MONITOR) {
		ret = -EBUSY;
		FUNC6(&priv->driver_lock);
		goto out;
	}

	FUNC3(dev);

	if (!priv->tx_pending_len)
		FUNC4(dev);

	FUNC6(&priv->driver_lock);

	ret = FUNC0(priv, CMD_ACT_MESH_CONFIG_START,
		FUNC1(priv));

out:
	return ret;
}