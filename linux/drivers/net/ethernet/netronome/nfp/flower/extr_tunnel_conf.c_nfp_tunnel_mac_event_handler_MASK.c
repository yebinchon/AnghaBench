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
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; struct nfp_app* app; } ;
struct nfp_flower_repr_priv {int on_bridge; } ;
struct nfp_app {int dummy; } ;
struct netdev_notifier_changeupper_info {scalar_t__ linking; struct net_device* upper_dev; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_UP ; 
 unsigned long NETDEV_CHANGEADDR ; 
 unsigned long NETDEV_CHANGEUPPER ; 
 unsigned long NETDEV_DOWN ; 
 unsigned long NETDEV_UP ; 
 int /*<<< orphan*/  NFP_TUNNEL_MAC_OFFLOAD_ADD ; 
 int /*<<< orphan*/  NFP_TUNNEL_MAC_OFFLOAD_DEL ; 
 int /*<<< orphan*/  NFP_TUNNEL_MAC_OFFLOAD_MOD ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct nfp_repr* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_app*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct nfp_app*,struct net_device*,int /*<<< orphan*/ ) ; 

int FUNC6(struct nfp_app *app,
				 struct net_device *netdev,
				 unsigned long event, void *ptr)
{
	int err;

	if (event == NETDEV_DOWN) {
		err = FUNC5(app, netdev,
					     NFP_TUNNEL_MAC_OFFLOAD_DEL);
		if (err)
			FUNC2(app, "Failed to delete offload MAC on %s.\n",
					     FUNC0(netdev));
	} else if (event == NETDEV_UP) {
		err = FUNC5(app, netdev,
					     NFP_TUNNEL_MAC_OFFLOAD_ADD);
		if (err)
			FUNC2(app, "Failed to offload MAC on %s.\n",
					     FUNC0(netdev));
	} else if (event == NETDEV_CHANGEADDR) {
		/* Only offload addr change if netdev is already up. */
		if (!(netdev->flags & IFF_UP))
			return NOTIFY_OK;

		err = FUNC5(app, netdev,
					     NFP_TUNNEL_MAC_OFFLOAD_MOD);
		if (err)
			FUNC2(app, "Failed to offload MAC change on %s.\n",
					     FUNC0(netdev));
	} else if (event == NETDEV_CHANGEUPPER) {
		/* If a repr is attached to a bridge then tunnel packets
		 * entering the physical port are directed through the bridge
		 * datapath and cannot be directly detunneled. Therefore,
		 * associated offloaded MACs and indexes should not be used
		 * by fw for detunneling.
		 */
		struct netdev_notifier_changeupper_info *info = ptr;
		struct net_device *upper = info->upper_dev;
		struct nfp_flower_repr_priv *repr_priv;
		struct nfp_repr *repr;

		if (!FUNC4(netdev) ||
		    !FUNC3(upper))
			return NOTIFY_OK;

		repr = FUNC1(netdev);
		if (repr->app != app)
			return NOTIFY_OK;

		repr_priv = repr->app_priv;

		if (info->linking) {
			if (FUNC5(app, netdev,
						   NFP_TUNNEL_MAC_OFFLOAD_DEL))
				FUNC2(app, "Failed to delete offloaded MAC on %s.\n",
						     FUNC0(netdev));
			repr_priv->on_bridge = true;
		} else {
			repr_priv->on_bridge = false;

			if (!(netdev->flags & IFF_UP))
				return NOTIFY_OK;

			if (FUNC5(app, netdev,
						   NFP_TUNNEL_MAC_OFFLOAD_ADD))
				FUNC2(app, "Failed to offload MAC on %s.\n",
						     FUNC0(netdev));
		}
	}
	return NOTIFY_OK;
}