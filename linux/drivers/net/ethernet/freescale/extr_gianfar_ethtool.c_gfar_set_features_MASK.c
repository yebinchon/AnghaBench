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
struct net_device {int features; int flags; } ;
struct gfar_private {int /*<<< orphan*/  state; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFAR_RESETTING ; 
 int IFF_UP ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct gfar_private*) ; 
 struct gfar_private* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct net_device *dev, netdev_features_t features)
{
	netdev_features_t changed = dev->features ^ features;
	struct gfar_private *priv = FUNC3(dev);
	int err = 0;

	if (!(changed & (NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX |
			 NETIF_F_RXCSUM)))
		return 0;

	while (FUNC6(GFAR_RESETTING, &priv->state))
		FUNC1();

	dev->features = features;

	if (dev->flags & IFF_UP) {
		/* Now we take down the rings to rebuild them */
		FUNC5(dev);
		err = FUNC4(dev);
	} else {
		FUNC2(priv);
	}

	FUNC0(GFAR_RESETTING, &priv->state);

	return err;
}