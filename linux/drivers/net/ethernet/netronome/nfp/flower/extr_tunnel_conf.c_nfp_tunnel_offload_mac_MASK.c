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
typedef  int /*<<< orphan*/  u8 ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; struct nfp_app* app; } ;
struct nfp_flower_repr_priv {int mac_offloaded; int /*<<< orphan*/ * offloaded_mac_addr; scalar_t__ on_bridge; } ;
struct nfp_flower_non_repr_priv {int mac_offloaded; int /*<<< orphan*/ * offloaded_mac_addr; } ;
struct nfp_app {int dummy; } ;
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
typedef  enum nfp_flower_mac_offload_cmd { ____Placeholder_nfp_flower_mac_offload_cmd } nfp_flower_mac_offload_cmd ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
#define  NFP_TUNNEL_MAC_OFFLOAD_ADD 130 
#define  NFP_TUNNEL_MAC_OFFLOAD_DEL 129 
#define  NFP_TUNNEL_MAC_OFFLOAD_MOD 128 
 int /*<<< orphan*/  FUNC0 (struct nfp_flower_non_repr_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_flower_non_repr_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct nfp_repr* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_app*,char*,int /*<<< orphan*/ ) ; 
 struct nfp_flower_non_repr_priv* FUNC9 (struct nfp_app*,struct net_device*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int FUNC11 (struct net_device*) ; 
 int FUNC12 (struct nfp_app*,struct net_device*,int,int) ; 
 int FUNC13 (struct nfp_app*,struct net_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15(struct nfp_app *app, struct net_device *netdev,
		       enum nfp_flower_mac_offload_cmd cmd)
{
	struct nfp_flower_non_repr_priv *nr_priv = NULL;
	bool non_repr = false, *mac_offloaded;
	u8 *off_mac = NULL;
	int err, port = 0;

	if (FUNC10(netdev)) {
		struct nfp_flower_repr_priv *repr_priv;
		struct nfp_repr *repr;

		repr = FUNC6(netdev);
		if (repr->app != app)
			return 0;

		repr_priv = repr->app_priv;
		if (repr_priv->on_bridge)
			return 0;

		mac_offloaded = &repr_priv->mac_offloaded;
		off_mac = &repr_priv->offloaded_mac_addr[0];
		port = FUNC11(netdev);
		if (!FUNC14(port))
			return 0;
	} else if (FUNC7(netdev)) {
		nr_priv = FUNC9(app, netdev);
		if (!nr_priv)
			return -ENOMEM;

		mac_offloaded = &nr_priv->mac_offloaded;
		off_mac = &nr_priv->offloaded_mac_addr[0];
		non_repr = true;
	} else {
		return 0;
	}

	if (!FUNC4(netdev->dev_addr)) {
		err = -EINVAL;
		goto err_put_non_repr_priv;
	}

	if (cmd == NFP_TUNNEL_MAC_OFFLOAD_MOD && !*mac_offloaded)
		cmd = NFP_TUNNEL_MAC_OFFLOAD_ADD;

	switch (cmd) {
	case NFP_TUNNEL_MAC_OFFLOAD_ADD:
		err = FUNC12(app, netdev, port, false);
		if (err)
			goto err_put_non_repr_priv;

		if (non_repr)
			FUNC0(nr_priv);

		*mac_offloaded = true;
		FUNC2(off_mac, netdev->dev_addr);
		break;
	case NFP_TUNNEL_MAC_OFFLOAD_DEL:
		/* Only attempt delete if add was successful. */
		if (!*mac_offloaded)
			break;

		if (non_repr)
			FUNC1(nr_priv);

		*mac_offloaded = false;

		err = FUNC13(app, netdev, netdev->dev_addr,
						false);
		if (err)
			goto err_put_non_repr_priv;

		break;
	case NFP_TUNNEL_MAC_OFFLOAD_MOD:
		/* Ignore if changing to the same address. */
		if (FUNC3(netdev->dev_addr, off_mac))
			break;

		err = FUNC12(app, netdev, port, true);
		if (err)
			goto err_put_non_repr_priv;

		/* Delete the previous MAC address. */
		err = FUNC13(app, netdev, off_mac, true);
		if (err)
			FUNC8(app, "Failed to remove offload of replaced MAC addr on %s.\n",
					     FUNC5(netdev));

		FUNC2(off_mac, netdev->dev_addr);
		break;
	default:
		err = -EINVAL;
		goto err_put_non_repr_priv;
	}

	if (non_repr)
		FUNC1(nr_priv);

	return 0;

err_put_non_repr_priv:
	if (non_repr)
		FUNC1(nr_priv);

	return err;
}